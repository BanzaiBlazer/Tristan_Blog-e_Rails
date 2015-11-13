class PostsController < ApplicationController

	def index
		@post = Post.all
	end

	def new
		@post = Post.new
	end

	def create
  		Post.create(content: params[:Post], user_id: session[:user_id])
  		redirect_to "/users"
  	end

	def show
		puts "Calling posts@show with #{params[:id]}"
		@post = Post.find(params[:id])
	end
end
