Shapado::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = ENV["debug_assets"] ? false : true

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  # If you have no front-end server that supports something like X-Sendfile,
  # just comment this out and Rails will serve the files

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store
  config.cache_store = :memory_store,  {:size => 500.megabytes,
                                        :expires_in => 2.hours}
  #config.cache_store = :redis_store, {:expires_in => 2.hours}

  #config.cache_store = [:file_store, "#{Rails.root}/tmp/cache"]

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = ENV["serve_assets"] ? true : false

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host =

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs
  config.assets.digest = true


  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true
end

class Goalie::CustomErrorPages
  def local_request?(*args)
    false
  end
end