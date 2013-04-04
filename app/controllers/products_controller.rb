class ProductsController < ApplicationController
 before_filter :authenticate_user!, :only => :rating
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
    days_info.shift
    params[:product][:days] = days_info.join(",")    
    @product = Product.new(params[:product])

    @product_price = @product.build_product_price(price_info)
    @product_price.client_id = params[:product][:client_id]

    @product.save!
    @product_price.save!    
    @product.attach_days(days_info) if @product.is_day_deal?
    redirect_to products_path(:cid => @product.client_id), :notice => "Product has been created successfully"
  end

  def edit
    @product = Product.find(params[:id])
    @client = @product.client
    @product_price = @product.product_price
  end

  def update
    price_info = params[:product].delete(:product_price)
    days_info = params[:product].delete(:days)
    days_info.shift
    params[:product][:days] = days_info.join(",")
    @product = Product.find(params[:id])

    @product_price = @product.product_price
    @product.update_attributes(params[:product])
    @product_price.update_attributes(price_info)
    @product.attach_days(days_info) if @product.is_day_deal?
    redirect_to products_path(:cid => @product.client_id), :notice => "Product info has been updated successfully"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render :text => "Ok", :layout => false
  end

  def rating
    rating = ProductsRating.create(rating: params[:rating], product_id: params[:id],user_id: session["warden.user.user.key"][1][0])
    render :text => "Ok", :layout => false
  end

  def deals_of_the_day
    @products = Product.joins(:deal_days).where("deal_days.name" => Date.new.strftime("%A"))
    render :action => :index
  end

  def filter_by_rating
    @products = Product.where rating: ProductsRating::VALID_RATINGS[params[:type]]
    render :layout => false
  end

end
