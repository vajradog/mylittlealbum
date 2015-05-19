class PhotosController < ApplicationController

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
      flash[:error] = "Could not add your photo, photo url must be present"
      redirect_to photos_path
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_url, :title, :description)
  end
end