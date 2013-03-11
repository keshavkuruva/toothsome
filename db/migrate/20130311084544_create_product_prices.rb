class CreateProductPrices < ActiveRecord::Migration
  def change
    create_table :product_prices do |t|
      t.integer :product_id
      t.integer :client_id
      t.float :price
      t.integer :discount
      t.date :valid_from
      t.date :valid_to

      t.timestamps
    end
  end
end
