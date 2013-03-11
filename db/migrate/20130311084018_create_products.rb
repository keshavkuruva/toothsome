class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.text :description
      t.string :image_url
      t.boolean :status

      t.timestamps
    end
  end
end
