class HomeController < ApplicationController
  def index
    @product_prices = ProductPrice.includes(:products).find_by_sql("select * from clients c,products p,product_prices pp where c.id = pp.client_id and p.product_id = pp.product_id");
    @products = Product.all
  end
end
