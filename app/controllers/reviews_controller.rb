class ReviewsController < ApplicationController
  before_action :find_dish
  before_action :find_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.dish_id = @dish.id
    @review.user_id = current_user.id

    if @review.save
      redirect_to dish_path(@dish)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to  dish_path(@dish)
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to dish_path(@dish)
  end

  private

    def review_params
      params.require(:review).permit(:rating, :comment)
    end

    def find_dish
      @dish = Dish.find(params[:dish_id])
    end

    def find_review
      @review = Review.find(params[:id])
    end

end