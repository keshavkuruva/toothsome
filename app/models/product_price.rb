class ProductPrice < ActiveRecord::Base
  attr_accessible :client_id, :discount, :price, :product_id, :valid_from, :valid_to
  belongs_to :product
  belongs_to :client
end
