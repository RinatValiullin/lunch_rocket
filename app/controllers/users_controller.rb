class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def show
    @roles = Role.all
  end
  
  def update
    @user = User.find(params[:id])
    @user.roles = []
    if params[:role]
      params[:role].keys.each {|role| @user.add_role role}
      redirect_to users_path, :notice => "User updated."
    end
  end
    
  def destroy
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end
end
