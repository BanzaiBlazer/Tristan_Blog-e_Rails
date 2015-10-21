class PostsController < ApplicationController
  
  def index
  end

  def new
    @post = Post.new
  end

  def show
  	puts "Calling posts@show with #{params[:id]}"
  	@post = Post.find(params[:id])
  end

end
