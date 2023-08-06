sentry_dsn =  ENV.fetch("SENTRY_DSN", nil)

if sentry_dsn
  Sentry.init do |config|
    config.dsn = sentry_dsn
    config.breadcrumbs_logger = [:active_support_logger, :http_logger, :sentry_logger]

    config.environment = ENV.fetch("SENTRY_ENV", Rails.env)

    sentry_enabled_environments = %w(staging production)
    sentry_enabled_environments.push(ENV["SENTRY_ENV"])
    sentry_enabled_environments.compact!
    config.enabled_environments = sentry_enabled_environments

    config.traces_sample_rate = ENV.fetch("SENTRY_TRACES_RATE", 0.1).to_f
  end
end
