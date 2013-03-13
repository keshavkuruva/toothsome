class AddClientIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :client_id, :integer, :limit => 11
  end
end
