class Renamecolumns < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.rename :id, :product_id
    end
    change_table :clients do |t|
      t.rename :id, :client_id
    end
  end

  def down
    change_table :products do |t|
      t.rename :product_id, :id
    end
    change_table :clients do |t|
      t.rename :client_id, :id
    end
  end
end
