class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :min_price
      t.integer :max_price
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
