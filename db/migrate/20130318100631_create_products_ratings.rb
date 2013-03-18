class CreateProductsRatings < ActiveRecord::Migration
  def change
    create_table :products_ratings do |t|
      t.integer :product_id, :limit => 11
      t.integer :user_id, :limit => 11
      t.string :rating

      t.timestamps
    end
  end
end
