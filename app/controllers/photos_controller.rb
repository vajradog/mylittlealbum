class PhotosController < ApplicationController
  before_filter :require_user

  def index
    @photos = Photo.all.order("created_at DESC")
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Your photo was added"
      redirect_to photos_path
    else
      @photos = Photo.all.reload
      flash.now[:error] = "Could not add your photo, photo url must be present"
      render 'index'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_url, :title, :description)
  end
end