class Client < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :country, :description, :email, :name, :phone_no, :postal_code, :state
  has_and_belongs_to_many :products
  has_many :product_prices
end
