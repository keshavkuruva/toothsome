class Addcolumnsearchhistory < ActiveRecord::Migration
  def up
    add_column :search_histories, :popularity, :integer
  end

  def down
  end
end
