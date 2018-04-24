class Image
  include ActiveModel::Model
  extend CarrierWave::Mount

  mount_uploader :image, ImageUploader

  def save
    self.store_image!
  end
end
