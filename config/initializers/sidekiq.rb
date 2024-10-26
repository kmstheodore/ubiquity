Sidekiq.configure_server do |config|
  config.redis = { url: "redis://red-cse6odu8ii6s738tohf0:6379" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://red-cse6odu8ii6s738tohf0:6379" }
end
