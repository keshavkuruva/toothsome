class ProductsController < ApplicationController

  def index
    @client = Client.find(params[:cid]) unless params[:cid].blank?
    if !@client.nil?
      @products = @client.products  
    elsif !params[:type].blank?
      @products = Product.where rating: ProductsRating::VALID_RATINGS[params[:type]]
    else
      @products = Product.all
    end
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
    price_info = params[:product].delete(:product_price)
    days_info = params[:product].delete(:days)
    @product = Product.find(params[:id])
    @product_price = @product.product_price
    @product.update_attributes(params[:product])
    @product_price.update_attributes(price_info)

    if @product.deal_type == true
        days_info.shift
        @product.deal_days.destroy
        days_info.each do |day|
          d = DealDay.new(name: day)
          d.product_id = @product.id
          d.save!
        end
    end

    if @product.valid? and @product_price.valid?
      redirect_to products_path(:cid => @product.client_id), :notice => "Product updated"
    else
      redirect_to products_path(:cid => @product.client_id), :notice => "Unable to update the product"
    end
=begin
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
=end
  end

  def destroy
  end

  def rating
    rating = ProductsRating.create(rating: params[:rating], product_id: params[:id])
    render :text => "Ok", :layout => false
  end

  def deals_of_the_day
    @products = Product.joins(:deal_days).where("deal_days.name" => Date.new.strftime("%A"))
    render :action => :index
  end

end
