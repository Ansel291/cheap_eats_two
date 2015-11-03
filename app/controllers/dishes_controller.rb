class DishesController < ApplicationController
  before_action :find_dish, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Dish.all.order("created_at DESC")
  end

  def show
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

  def edit
  end

  def update
    if @dish.update(dish_params)
      redirect_to dish_path(@dish)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

    def dish_params
      params.require(:dish).permit(:title, :restaurant, :city, :price, :description)
    end

    def find_dish
      @dish = Dish.find(params[:id])
    end

end
