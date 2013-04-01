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
      @product_prices = ProductPrice.includes(:product).where("product_id in (#{arr})")
    else
      #@product_prices = ProductPrice.includes(:products).find_by_sql("select * from clients c,products p,product_prices pp where c.id = pp.client_id and p.id = pp.product_id")
      @product_prices = ProductPrice.includes(:product).joins(:client,:product);
    end
    today_entry = DealDay.find_by_name(Date.new.strftime("%A"))
    @today_product = today_entry.product unless today_entry.nil?
  end

  def product_search
    @product_prices = []
    
    if params[:type] == 'by_price'
      price_from = params[:price_from]
      price_to = params[:price_to]
      @product_prices = ProductPrice.includes(:product).where("product_prices.price >= ? and product_prices.price <= ? ",price_from,price_to) 
    elsif params[:type] == 'by_name'
      #before searching store the search history
      obj=SearchHistory.where("user_id = ? and keyword = ?",session["warden.user.user.key"][1][0],"%#{params[:query]}%".gsub(/\%/,'')).first
      if ( !obj.blank? )
        SearchHistory.update_all({ :popularity => obj.popularity + 1 }, { :user_id =>  obj.user_id, :keyword => obj.keyword })
      else
        sh = SearchHistory.new
        sh.user_id =  session["warden.user.user.key"][1][0]
        sh.keyword = "%#{params[:query]}%".gsub(/\%/,'') 
        sh.searched_on = Time.now
        sh.popularity = 1
        sh.save!
      end
      #get the required details
      @product_prices = ProductPrice.includes(:product, :client).where("products.name like ? and clients.city like ?", "%#{params[:query]}%", "%#{params[:city]}")
    end

    render :layout => false if request.xhr?
  end

  def search_products
    @products = Product.includes(:client).all(:conditions => ["products.name like ? and clients.city like ?", "%#{params[:query]}%", "%#{params[:city]}"])
    respond_to do |format|
      format.json { render :json => @products.as_json(:only => [:name])}
    end
  end

  def show
    @product_prices = ProductPrice.includes(:product,:client).find(params[:id])
    render :layout => false if request.xhr?
  end

  def about

  end
end
