Rails.application.configure do 
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = true
  config.assets.js_compressor = :uglifier
  config.assets.compile = true
  config.assets.digest = true
  config.assets.version = '1.0'
  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
 config.action_mailer.default_url_options = { :host => 'http://aakrithi-ceg.herokuapp.com' }
 ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true

ActionMailer::Base.smtp_settings = {
  :address   => "smtp.mandrillapp.com",
  :authentication => 'login',
  :port      => 587,
  :user_name => "krysta@quanta.net.in",
  :password  => "8KAYUBpGBKwbwHb3Q47MTg"
}
end
