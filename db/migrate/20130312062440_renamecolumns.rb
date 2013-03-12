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
  end
end
