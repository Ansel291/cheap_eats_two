class StaticController < ApplicationController
   def index
    if params[:category].blank?
      @dishes = Dish.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @dishes = Dish.where(:category_id => @category_id).order("created_at DESC")
    end
  end
end
