require 'rails_helper'

RSpec.describe Posts, :type => :model do
	
	user = FactoryGirl.build(:user)

	describe "GET #index" do

		it "returns HTTP success" do
			get :index
			expect(response).to be_success
		end

		describe "validations" do

			it "has content" do
				user = FactoryGirl.build(:post)
				expect(post.content).to eq("whats up dawg?")
			end

			it "has user_id" do
				user = FactoryGirl.build(:post)
				expect(post.user_id).to eq(1)
			end
		end

		describe "Invalidations" do

			it "has content" do
				user = FactoryGirl.build(:post, content: nil)
				expect(post.content).to eq(nil)
			end

			it "has user_id" do
				user = FactoryGirl.build(:post, user_id: nil)
				expect(post.user_id).to eq(nil)
			end
		end

		
	end
end