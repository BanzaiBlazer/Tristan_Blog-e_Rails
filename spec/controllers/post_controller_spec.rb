require 'rails_helper'

RSpec.describe PostsController, :type => :controller do
	
	post = FactoryGirl.build(:post)

	describe "GET #index" do
		it "returns HTTP success" do
			get :index
			expect(response).to be_success
		end

		it "shows all posts" do
			post = FactoryGirl.create(:post)
			get :index, {}
			expect(assigns(:post)).to eq([post])
		end
	end

	describe "GET new post" do
		it "makes a new post" do
			get :new
			expect(assigns(:post)).to be_a(Post)
		end	

		it "redirects to the home after posts are done" do 
			post = FactoryGirl.create(:post)
			expect(response.status).to eq(200) 
		end
	end
end