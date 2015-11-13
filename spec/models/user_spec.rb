require 'rails_helper'

RSpec.describe Users, :type => :model do
	
	user = FactoryGirl.build(:user)

	describe "GET #index" do

		it "returns HTTP success" do
			get :index
			expect(response).to be_success
		end

		describe "validations" do

			it "has name" do
				user = FactoryGirl.build(:user)
				expect(user.name).to eq("Tristan")
			end

			it "has email" do
				user = FactoryGirl.build(:user)
				expect(user.email).to eq("tris@gmail.com")
			end

			it "has password" do
				user = FactoryGirl.build(:user)
				expect(user.password).to eq("123456")
			end
		end

		describe "Invalidations" do

			it "has no name" do
				user = FactoryGirl.build(:user, name: nil)
				expect(user.name).to eq(nil)
			end

			it "has no email" do
				user = FactoryGirl.build(:user, email: nil)
				expect(user.email).to eq(nil)
			end

			it "has no password" do
				user = FactoryGirl.build(:user, password: nil)
				expect(user.password).to eq(nil)
			end
		end

		
	end
end