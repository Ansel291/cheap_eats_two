class AddDishIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :dish_id, :integer
  end
end
