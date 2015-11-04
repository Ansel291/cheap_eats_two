class ReviewsController < ApplicationController
  before_action :find_dish

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

  private

    def review_params
      params.require(:review).permit(:rating, :comment)
    end

    def find_dish
      @dish = Dish.find(params[:dish_id])
    end

end
