class ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    @image.save
    redirect_to controller: 'users', action: 'image_create'
  end

  private
  def image_params
    params.require(:image).permit(:image)
  end
end
