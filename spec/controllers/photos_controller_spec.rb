require 'rails_helper'

describe PhotosController do
  before { set_current_user }
  
  describe "GET index" do
    it "sets the @photos" do 
      photo1 = Fabricate(:photo)
      photo2 = Fabricate(:photo)
      get :index
      expect(assigns(:photos)).to match_array([photo1, photo2])
    end
  end

  describe "POST create" do
    context "with valid input" do
      before do
        post :create, photo: {photo_url: "k", title:"s", description:"k"}
      end

      it "creates a photo" do
        expect(Photo.count).to eq(1)
      end

      it "sets the notice" do
        expect(flash[:notice]).not_to be_blank
      end
    end

    context "with invalid input" do
      before do
        post :create, photo: {title:"s", description:"k"}
      end

      it "does not creates a photo" do
        expect(Photo.count).to eq(0)
      end

      it "sets the error message" do
        expect(flash[:error]).not_to be_blank
      end
    end
  end
end
