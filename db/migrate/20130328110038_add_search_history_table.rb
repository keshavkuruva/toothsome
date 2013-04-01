class AddSearchHistoryTable < ActiveRecord::Migration
  def change
    create_table :search_histories, { :id => false } do |t|
      t.string :keyword
      t.integer :user_id
      t.datetime :searched_on
    end

    execute 'alter table search_histories add primary key (user_id,keyword);'
  end
end
