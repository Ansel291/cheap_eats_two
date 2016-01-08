class DishesController < ApplicationController
  before_action :find_dish, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:category].blank?
      @dishes = Dish.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @dishes = Dish.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
    if @dish.reviews.blank?
      @average_review = 0
    else
      @average_review = @dish.reviews.average(:rating).round(2)
    end
  end

  def new
    @dish = current_user.dishes.build
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def create
    @dish = current_user.dishes.build(dish_params)
    @dish.category_id = params[:category_id]

    if @dish.save
      redirect_to dishes_path
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def update
    @dish.category_id = params[:category_id]
    if @dish.update(dish_params)
      redirect_to dish_path(@dish)
    else
      render 'edit'
    end
  end

  def destroy
    @dish.destroy
    redirect_to dishes_path
  end

  private

    def dish_params
      params.require(:dish).permit(:title, :restaurant, :city, :price, :description, :image, :category_id)
    end

    def find_dish
      @dish = Dish.find(params[:id])
    end

end
