class RemoveImageUrlFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :image_url
  end

  def down
    add_column :clients, :image_url, :string
  end
end
