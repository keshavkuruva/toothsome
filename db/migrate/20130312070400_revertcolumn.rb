class Revertcolumn < ActiveRecord::Migration
  def up
     change_table :products do |t|
         t.rename :product_id, :id
     end
     change_table :clients do |t|
         t.rename :client_id, :id
     end
     execute <<-SQL
       alter table clients modify id int(11) auto_increment;
     SQL
     execute <<-SQL
       alter table products modify id int(11) auto_increment;
     SQL
  end

  def down
  end
end
