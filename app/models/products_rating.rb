class ProductsRating < ActiveRecord::Base
  attr_accessible :product_id, :rating, :user_id
  belongs_to :product
  VALID_RATINGS = {"Average" => 1, "Better" => 2, "Best" => 3, "Most wanted" => 4, "Awesome" => 5}
  after_save :compute_product_rating
 
  def compute_product_rating
    p = Product.includes(:products_ratings).find(self.product_id)
    all_ratings = p.products_ratings
    if all_ratings.empty?
      avg_rating = 0
    else
      sum = 0
      VALID_RATINGS.each_pair do |rating_label, rating_value|
        rt = all_ratings.where rating: rating_label
        rt_count = rt.empty? ? 0 : rt.count
        sum += rt_count * rating_value
      end
      avg_rating = sum / all_ratings.count
    end
    p.rating = avg_rating
    p.save!
  end

end
