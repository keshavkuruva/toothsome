class AddClientIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :client_id, :integer
  end
end
