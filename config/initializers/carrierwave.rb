CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'AKIA5BSOOZNVCJMJMY6D',
    aws_secret_access_key: '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'
  }
  config.fog_directory  = 'beinone'
end
