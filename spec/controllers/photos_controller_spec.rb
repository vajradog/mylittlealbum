require 'rails_helper'

describe PhotosController do
  before { set_current_user }
  
  describe "GET index" do
    it "sets the @photos" do

      photo1 = Fabricate(:photo, user: current_user)
      photo2 = Fabricate(:photo, user: current_user)
      get :index
      expect(assigns(:photos)).to match_array([photo1, photo2])
    end
  end

  describe "POST create" do
    context "with valid input" do
      before do
        post :create, photo: {title:"s", photo_url: "sadf.jpg", description:"k", user: current_user}
      end

      it "creates a photo" do
        expect(current_user.photos.count).to eq(1)
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

  describe "DELETE destroy" do
    before { set_current_user }

    it "redirects to photos page" do
      picnic_photo = Fabricate(:photo)
      delete :destroy, id: picnic_photo.id
      expect(response).to redirect_to photos_path
    end

    it "deletes the photo" do 
      picnic_photo = Fabricate(:photo, user: current_user)
      delete :destroy, id: picnic_photo.id
      expect(Photo.count).to eq(0)
    end

    it "does not delete the photo if the current user does not own it" do
      thupten = Fabricate(:user)
      thupten_photo = Fabricate(:photo, user: thupten)
      delete :destroy, id: thupten_photo.id
      expect(Photo.count).to eq(1) 
    end

    context "with unauthenticated user" do
      it_behaves_like "require_sign_in" do
        let(:action) { delete :destroy, id: 3 }
      end
    end
  end
end

