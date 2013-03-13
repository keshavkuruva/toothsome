class HomeController < ApplicationController
  def index
    @product_prices = ProductPrice.includes(:products).find_by_sql("select * from clients c,products p,product_prices pp where c.id = pp.client_id and p.id = pp.product_id");
  end

  def search_by_price
    price_from = params[:price_from]
    price_to = params[:price_to]
    @product_prices = ProductPrice.includes(:products).find_by_sql(["select * from clients c,products p,product_prices pp where c.id = pp.client_id and p.id = pp.product_id and pp.price >= ? and pp.price <= ? ",price_from,price_to]); 
    render :layout => false if request.xhr?
  end

  def show
    @product_prices = ProductPrice.includes(:product,:client).find(params[:id])
  end
end
