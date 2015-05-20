require 'rails_helper'

describe SessionsController do

  describe 'GET new' do
    it 'redirects to photos_path if already logged in' do 
      thupten = Fabricate(:user)
      session[:user_id] = thupten.id
      get :new
      expect(response).to redirect_to photos_path
    end
  end

  describe 'POST create' do
    let(:thupten) { Fabricate(:user) }

    context 'with valid credentials' do
      it 'sets the sessions[:user_id]' do
        post :create, email: thupten.email, password: thupten.password
        expect(session[:user_id]).to eq(thupten.id)
      end

      it 'redirects to photos page' do
        post :create, email: thupten.email, password: thupten.password
        expect(response).to redirect_to photos_path
      end

      it 'sets the notice' do 
        post :create, email: thupten.email, password: thupten.password
        expect(flash[:notice]).to_not be_blank
      end
    end

    context 'with invalid credentials' do
      it 'does not set the sessions[:user_id]' do
        post :create, password: "whatever"
        expect(session[:user_id]).to be_nil
      end

      it 'redirects to root path' do
        post :create, password: "whatever"
        expect(response).to redirect_to root_path
      end

      it 'sets the error message' do
        post :create, password: "whatever"
        expect(flash[:error]).to_not be_blank
      end
    end
  end

  describe 'DESTROY session' do

    it 'sets the session[:id] to nil' do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(session[:user_id]).to be_nil
    end

    it 'redirects to root path' do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(response).to redirect_to root_path
    end

    it 'sets the notice' do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(flash[:notice]).to_not be_blank
    end
  end

end