# When signing in, these paths redirect the page
# back to the dishes index page, so that the
# page does not redirect back to the index home
# intro page with the fade out image

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    dishes_path
  end

  def after_sign_out_path_for(resource)
    dishes_path
  end

end
