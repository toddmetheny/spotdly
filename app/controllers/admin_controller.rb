class AdminController < ApplicationController
  def admin
    unless current_user.admin
      redirect_to root_path
    end
    @users = User.all
  end
end
