class WelcomeController < ApplicationController
  skip_before_action :signed_in_user
  def index
    if signed_in?
      @user = current_user
    end
  end
end
