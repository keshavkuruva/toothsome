class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :sku, :status
  has_and_belongs_to_many :clients
  has_many :product_prices
  has_and_belongs_to_many :categories
end
