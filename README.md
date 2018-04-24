# rails-multi-s3-upload

## よく見るcarrierwaveとfogの構成と違う点
- [./config/initializers/carrierwave.rb](./config/initializers/carrierwave.rb) で `fog_directory` を指定しない
- [./app/uploaders](./app/uploaders) でBucket別にuploderを用意する

## 環境構築
- [./config/initializers/carrierwave.rb](./config/initializers/carrierwave.rb) を適切に設定する
- [./app/uploaders](./app/uploaders) のS3_BUCKETを自分の使うBucket名に変更する

## 起動方法
```
$ bundle install --path vendor/bundle
$ bundle exec rails s

以下の二つのURLでそれぞれ別のBucketにファイルがアップロードされる
http://localhost:3000/users/image_create
http://localhost:3000/users/picture_create
```
