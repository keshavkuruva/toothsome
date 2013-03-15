class ProductsController < ApplicationController

  def index
    @client = Client.find(params[:cid]) unless params[:cid].blank?
    @products = @client.nil? ? Product.all : @client.products
  end

  def show
    @product = Product.find(params[:id])
    @client = @product.client
  end

  def new
    @product = Product.new
    @client = Client.find(params[:cid])
  end

  def create
    price_info = params[:product].delete(:product_price)
    days_info = params[:product].delete(:days)
    @product = Product.new(params[:product])

    @product_price = @product.build_product_price(price_info)
    @product_price.client_id = params[:product][:client_id]

    if @product.valid? and @product_price.valid?
      @product.save!
      @product_price.save!
      if @product.deal_type == true
        days_info.shift
        days_info.each do |day|
          d = DealDay.new(name: day)
          d.product_id = @product.id
          d.save!
          puts "==========> #{d.product_id}"
        end
      end
      redirect_to products_path(:cid => @product.client_id)
    else
       @client = @product.client
    end
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
