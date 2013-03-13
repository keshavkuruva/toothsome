class ProductsController < ApplicationController

  def index
    @client = Client.find(params[:cid]) unless params[:cid].blank?
    @products = @client.nil? ? Product.all : @client.products
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product.client_id = params[:cid]
  end

  def create
    @product_price_info = params[:product].delete(:product_price)
    product = Product.new(params[:product])
    product.save!
    set_dates_info
    price_info = product.build_product_price(@product_price_info)
    price_info.save!
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
    @product_price = @product.product_price
  end

  def update
    @product_price_info = params[:product].delete(:product_price)
    product = Product.find(params[:id])
    price_info = product.product_price
    product = product.update_attributes(params[:product])
    set_dates_info
    price_info = price_info.update_attributes(@product_price_info)
    if product and price_info
      redirect_to products_path, :notice => "Product updated"
    else
      redirect_to products_path, :notice => "Unable to update the product"
    end
  end

  def destroy
  end

  private

  def set_dates_info
    from = @product_price_info.delete("valid_from(1i)") + "-" + @product_price_info.delete("valid_from(2i)") + "-" + @product_price_info.delete("valid_from(3i)")

    to = @product_price_info.delete("valid_to(1i)") + "-" + @product_price_info.delete("valid_to(2i)") + "-" + @product_price_info.delete("valid_to(3i)")
    @product_price_info.merge(valid_from: from, valid_to: to)
  end
end
