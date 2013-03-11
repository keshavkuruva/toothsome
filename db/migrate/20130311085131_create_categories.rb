class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    create_table :products_categories do |t|
      t.integer :product_id
      t.integer :category_id
    end
  end
end
