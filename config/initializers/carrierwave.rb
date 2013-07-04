CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAI5WRUW6V4HZUHMWA',       # required
    :aws_secret_access_key  => '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',       # required
   
  }
  config.fog_directory  = 'tiptwotravel' # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
end