class RegistrationController < ApplicationController
  def index
    @users = User.all
  end
end