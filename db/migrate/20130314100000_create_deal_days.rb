class CreateDealDays < ActiveRecord::Migration
  def change
    create_table :deal_days do |t|
      t.string :name
      t.integer :product_id, :limit => 11

      t.timestamps
    end
  end
end
