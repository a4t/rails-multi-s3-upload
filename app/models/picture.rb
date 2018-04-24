class Picture
  include ActiveModel::Model
  extend CarrierWave::Mount

  mount_uploader :picture, PictureUploader

  def save
    self.store_picture!
  end
end
