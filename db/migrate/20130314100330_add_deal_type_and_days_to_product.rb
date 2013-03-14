class AddDealTypeAndDaysToProduct < ActiveRecord::Migration
  def change
    add_column :products, :deal_type, :boolean
    add_column :products, :days, :string
  end
end
