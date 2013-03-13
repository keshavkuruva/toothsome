class ProductsController < ApplicationController

  def index
    @client = Client.find(params[:cid]) unless params[:cid].blank?
    @products = @client.nil? ? Product.all : @client.products
  end

  def show
    @client = Client.find(params[:cid])
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @client = Client.find(params[:cid])
  end

  def create
    logger.info "SUMANTH:" + params.inspect
    @product_price_info = params[:product].delete(:product_price)
    product = Product.new(params[:product])
    product.save!
    price_info = product.build_product_price(@product_price_info)
    price_info.client_id = params[:product][:client_id]
    price_info.save!
    redirect_to products_path(:cid => product.client_id)
  end

  def edit
    @product = Product.find(params[:id])
    @client = @product.client
    @product_price = @product.product_price
  end

  def update
    @product_price_info = params[:product].delete(:product_price)
    @product = Product.find(params[:id])
    price_info = @product.product_price
    product = @product.update_attributes(params[:product])
    price_info = price_info.update_attributes(@product_price_info)
    if product and price_info
      redirect_to products_path(:cid => @product.client_id), :notice => "Product updated"
    else
      redirect_to products_path(:cid => @product.client_id), :notice => "Unable to update the product"
    end
  end

  def destroy
  end

end
