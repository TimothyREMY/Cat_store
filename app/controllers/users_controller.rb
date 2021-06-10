class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @users = User.find(params[:id])
    @orders = current_user.orders
  end

  def index
    @users = User.find(current_user.id)
    @orders = current_user.orders
  end
end
