CarrierWave.configure do |config|
  config.storage = :aws
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.aws_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],                 # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],             # required
    # :access_key_id      => ENV['AWS_ACCESS_KEY_ID'],                 # required
    # :secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],             # required
    region: 'us-east-1'

  }
  config.aws_bucket  = ENV['S3_BUCKET_NAME']                             # required
  config.aws_acl    = 'public-read'                                 # optional, defaults to true
  config.aws_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
