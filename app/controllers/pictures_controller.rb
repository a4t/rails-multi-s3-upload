class PicturesController < ApplicationController
  def create
    @picture = Picture.new(picture_params)
    @picture.save
    redirect_to controller: 'users', action: 'picture_create'
  end

  private
  def picture_params
    params.require(:picture).permit(:picture)
  end
end
