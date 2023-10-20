class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @other_users = []
    @other_users << @user
  end

end