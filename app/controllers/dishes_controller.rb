class DishesController < ApplicationController

  def index
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def dish_params
      params.require(:dish).permit(:title, :restaurant, :city, :price, :description)
    end

end
