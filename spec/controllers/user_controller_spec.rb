require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	
user = FactoryGirl.build(:user)

#build = new then no saving
#create = create then saving

	describe "GET #index" do
		it "returns HTTP success" do
			get :index
			expect(response).to be_success
		end

		it "shows all user" do
			user = FactoryGirl.create(:user)
			get :index, {}
			expect(assigns(:user)).to eq([user])
		end
	end

	describe "GET new user" do
		it "makes a new user" do
			get :new
			expect(assigns(:user)).to be_a(User)
		end	
	end

	describe "GET edit user credits" do
		it "should assign a correct user to @user, for editing" do
			#making a new user for this pourpose for testing
			user2 = FactoryGirl.create(:user)
			get :edit, id: user2.id
			expect(assigns(:user)).to eq(user2)
		end	
	end

	describe "DELETE destroy" do
		it "destroys the requested user" do
			user2 = FactoryGirl.create(:user)
			get :destroy,  {id: user2.id}, {user_id: user2.id}
			expect(User.find_by(name: user2.name)).to be_nil
			User.destroy_all
		end

		it "redirects to the dogs list" do 
			user2 = FactoryGirl.create(:user)
			get :destroy,  {id: user2.id}, {user_id: user2.id}
			expect(User.find_by(name: user2.name)).to be_nil
			User.destroy_all
			expect(response.status).to eq(200)  
		end 
	end

end