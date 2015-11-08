class AdminController < ApplicationController
  def admin
    @users = User.all
  end
end
