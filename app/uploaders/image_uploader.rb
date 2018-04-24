class ImageUploader < CarrierWave::Uploader::Base
  storage :fog
  S3_BUCKET = 'a4t-image-bucket'

  def store_dir
    "uploads/#{Time.now.to_i}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def fog_directory
    S3_BUCKET
  end

  def filename
    original_filename if original_filename
  end
end
