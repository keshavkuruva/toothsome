class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :sku, :status, :client_id
  belongs_to :client
  has_one :product_price
  has_and_belongs_to_many :categories
end
