class UsersController < ApplicationController
  def image_create
    @image = Image.new
  end

  def picture_create
    @picture = Picture.new
  end
end
