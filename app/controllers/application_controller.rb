class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # redirect user on tvshows index page after login
  def after_sign_in_path_for(*)
    tvshows_path(current_user)
  end
end
