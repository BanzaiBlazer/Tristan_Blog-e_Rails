class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def fact
  end

  def profile
  end

# we make a new show definition, then we "puts" something text, then
# @user line is defining the user.find and params id is calling the user with
# that id.


##### everytime we wnat a new fnction we make a new def and a new html.erb file


  def show
  	puts "Calling users#show with #{params[:id]}"
  	@user = User.find(params[:id])
  end

  def destroy
  	@zimmer = User.find(params[:id])
  	@zimmer.destroy
  end

  def person_params
  	params.require(:user).permit(:name,:email,:password,:post)
  end

  def create
  	# params.require(:user).permit!
  	User.create(params[:user])
  	redirect_to "/users"
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(params[:user])
  	redirect_to user_path @user
  end
end