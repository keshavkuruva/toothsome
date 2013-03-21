class Revertcolumn < ActiveRecord::Migration
  def up
     change_table :products do |t|
         t.rename :product_id, :id
     end
     change_table :clients do |t|
         t.rename :client_id, :id
     end

     change_column :clients, :id, :integer, :auto_increment => 'true'
     change_column :clients, :id, :integer, :auto_increment => true
  end

  def down
  end
end
