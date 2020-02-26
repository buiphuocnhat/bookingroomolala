Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.action_mailer.delivery_method = :smtp

  # MailGun
  # config.action_mailer.smtp_settings = {
  #      :address => "smtp.mailgun.org",
  #      :port => 587,
  #      :domain => ENV["mailgun_domain"],
  #      :authentication => :plain,
  #      :user_name => ENV["mailgun_username"],
  #      :password => ENV["mailgun_password"]
  # }

  # GMAIL
  config.action_mailer.smtp_settings = {
       :address => "smtp.gmail.com",
       :port => 587,
       :user_name => "localif3@gmail.com",
       :password => "cuoilalieuthuocbo11",
       :authentication => :plain,
       :enable_starttls_auto => true
  }

  # USE AWS FOR PAPERCLIP
  # config.paperclip_defaults = {
  #     storage: 's3',
  #     path: ':class/:attachment/:id/:style/:filename',
  #     s3_host_name: ENV["aws_s3_host_name"],
  #     s3_credentials: {
  #       bucket: ENV["aws_bucket"],
  #       access_key_id: ENV["aws_access_key_id"],
  #       secret_access_key: ENV["aws_secret_access_key"],
  #       s3_region: ENV["aws_s3_region"]
  #     }
  # }
end