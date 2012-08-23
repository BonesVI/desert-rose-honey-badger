class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.decimal :minimum_bid

      t.timestamps
    end
  end
end
