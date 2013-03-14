class Client < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :country, :description, :email, :name, :phone_no, :postal_code, :state, :photo
  has_many :products
  validates_attachment_presence :photo
  has_attached_file :photo, :styles => {:thumb=> "100x100#", :small  => "150x150>", :medium => "300x300>", :large => "400x400>" }
end
