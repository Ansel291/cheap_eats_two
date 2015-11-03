class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.string :restaurant
      t.string :city
      t.string :price
      t.text :description

      t.timestamps null: false
    end
  end
end
