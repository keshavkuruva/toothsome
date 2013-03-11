class CreateProductClienttable < ActiveRecord::Migration
  def up
    create_table :clients_products, :id => false do |t|
      t.integer :client_id
      t.integer :product_id
    end
  end

  def down
  end
end
