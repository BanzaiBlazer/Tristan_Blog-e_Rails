class UsersController < ApplicationController
  def index
  	@users = User.all
    @posts = Post.all
  end

  # def fact
  # end

  def profile
    @user = User.find_by(id: session[:user_id])
    # id = @user.id
  end

  # we make a new show definition, then we "puts" something text, then
  # @user line is defining the user.find and params id is calling the user with
  # that id.

  ##### everytime we wnat a new fnction we make a new def and a new html.erb file

  #references to "username" from login.html.erb


  def loginverify
    @user = User.where(
      name: params[:username], 
      password: params[:password]
      ).first 
    if @user
      session[:user_id] = @user.id
      redirect_to '/profile'
      flash[:notice] = "Oh yays"

    else
      redirect_to '/login?ERROR'
      flash[:notice] = "Wrong Credentials"
    end
  end

  def logout
    session.clear
    redirect_to '/users'
  end

  def show
    # puts "Calling users#show with #{params[:id]}"
    @user = User.find(params[:id])
  end

  def destroy
    # puts "Calling users#destroy with #{params[:id]}"
    user = User.find(session[:user_id])
    user.delete
    # if user.destroy!
    #   session[:user_id].destroy
    #   redirect_to new_user_path
    #   flash[:notice] = "Mucho delete"
    # else
    #   flash[:notice] = "Oh noes"
    # end
  end

  def create
  	User.create(params[:user])
  	redirect_to "/users"
  end

  def edit
   @user = User.find(params[:id])
  end

 def update
   @user = User.find(params[:id])
   @user.update(params[:user])
   redirect_to user_path
 end

  def new
    @user = User.new
  end

  # def current_user
  #   if session[:user_id]
  #     @current_user = User.find(session[:user_id])
  #   end
  # end

  # def set_user
  #   @user = User.find(params[:id])
  # end
end