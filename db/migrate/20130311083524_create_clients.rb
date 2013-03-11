class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :description
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.integer :postal_code
      t.string :email
      t.string :phone_no
      t.string :image_url

      t.timestamps
    end
  end
end
