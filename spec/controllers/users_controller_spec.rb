require 'rails_helper'

describe UsersController do

  describe "GET new" do 
    it "sets @user" do 
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end


  describe "POST create" do
    context "with valid inputs" do
      it "creates a user" do
        post :create, user: { email: "sandy@yahoo.com", full_name: "Sandy Karen", password: "sandy" }
        expect(User.first.full_name).to eq("Sandy Karen")
      end

      it "redirects to the photos index page after create" do
        post :create, user: { email: "sandy@yahoo.com", full_name: "Sandy Karen", password: "sandy" }
        expect(response).to redirect_to photos_path
      end

      it "sets the success message" do
        post :create, user: { email: "sandy@yahoo.com", full_name: "Sandy Karen", password: "sandy" }
        expect(flash[:notice]).not_to be_blank
      end

      it "sets session[:user_id] " do
        post :create, user: { email: "sandy@yahoo.com", full_name: "Sandy Karen", password: "sandy" }
        expect(session[:user_id]).to_not be_nil
      end

    end

    context "with invalid inputs" do
      it "does not create a user" do
        post :create, user: {email: "sandy@yahoo.com", password: "sandy"}
        expect(User.count).to eq(0)
      end

      it "renders the root_ath template" do
        post :create, user: {email: "sandy@yahoo.com", password: "sandy"}
        expect(response).to redirect_to root_path
      end

      it "sets @user" do 
        get :new
        expect(assigns(:user)).to be_instance_of(User)
      end
    
    end
  end
end