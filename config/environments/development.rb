SvitlaTaskV3::Application.configure do
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAIOHG2QCOZGEKJXUA',
    aws_secret_access_key: '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',
    region: 'eu-west-1'
  }
  config.fog_directory = 'S3_birukova'
  config.fog_public = true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end
