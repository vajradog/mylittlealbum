class PhotosController < ApplicationController
  before_filter :require_user

  def index
    @photos = current_user.photos
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Your photo was added"
      redirect_to photos_path
    else
      @photos = current_user.photos.reload
      flash[:error] = "Photo url must be present and have correct extension"
      render 'index'
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.delete if current_user.photos.include?(photo)
    redirect_to photos_path
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_url, :title, :description).merge!(user: current_user)
  end
end