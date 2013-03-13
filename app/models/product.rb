class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :sku, :status
  has_and_belongs_to_many :clients
  has_one :product_price
  has_and_belongs_to_many :categories
end
