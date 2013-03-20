class Product < ActiveRecord::Base
  attr_accessible :description, :photo, :name, :sku, :status, :client_id, :deal_type, :photo_file_name, :tag_list, :days
  acts_as_taggable
  belongs_to :client
  has_one :product_price, dependent: :destroy
  validates_attachment_presence :photo
  has_attached_file :photo, :styles => {:thumb=> "100x100#", :small  => "150x150>", :medium => "300x300>", :large => "400x400>" }
  has_many :deal_days, dependent: :destroy
  has_many :products_ratings, dependent: :destroy

  def is_day_deal?
    self.deal_type == true
  end

  def attach_days(days_info)
    self.deal_days.destroy
    days_info.each do |day|
      d = DealDay.new(name: day)
      d.product_id = self.id
      d.save!
   end
  end
end
