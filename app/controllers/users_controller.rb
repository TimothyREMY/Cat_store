class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
    @orders = current_user.orders
  end
end
