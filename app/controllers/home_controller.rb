class HomeController < ApplicationController
  def index
    if params[:tag]
      #
      #dirty hack here, need to find the better solution
      #
      products = Product.tagged_with(params[:tag])
      arr = ''
      products.each do |row|
        arr += row.id.to_s + ','
      end
      arr.chop! 
      @product_prices = ProductPrice.includes(:products).find_by_sql("select * from product_prices where product_id in (#{arr})")
    else
      @product_prices = ProductPrice.includes(:products).find_by_sql("select * from clients c,products p,product_prices pp where c.id = pp.client_id and p.id = pp.product_id")
    end
    today_entry = DealDay.find_by_name(Date.new.strftime("%A"))
    @today_product = today_entry.product unless today_entry.nil?
  end

  def search_by_price
    price_from = params[:price_from]
    price_to = params[:price_to]
    @product_prices = ProductPrice.includes(:products).find_by_sql(["select * from clients c,products p,product_prices pp where c.id = pp.client_id and p.id = pp.product_id and pp.price >= ? and pp.price <= ? ",price_from,price_to]); 
    render :layout => false if request.xhr?
  end

  def search_products
    @products = Product.all(:conditions => ["name like ?", "%#{params[:query]}%"])
    respond_to do |format|
      format.json { render :json => @products.as_json(:only => [:name])}
    end
  end

  def show
    @product_prices = ProductPrice.includes(:product,:client).find(params[:id])
    render :layout => false if request.xhr?
  end
end
