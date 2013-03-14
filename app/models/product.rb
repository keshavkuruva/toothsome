class Product < ActiveRecord::Base
  attr_accessible :description, :photo, :name, :sku, :status, :client_id
  belongs_to :client
  has_one :product_price
  has_and_belongs_to_many :categories
  validates_attachment_presence :photo
  has_attached_file :photo, :styles => {:thumb=> "100x100#", :small  => "150x150>", :medium => "300x300>", :large => "400x400>" }
  has_many :deal_days
end
