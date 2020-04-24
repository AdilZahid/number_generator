require 'sidekiq'
require 'sidekiq/web'
require 'sidekiq/cron/web'
Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379' }
end
schedule_file = "config/schedule.yml"

if File.exist?(schedule_file) && Sidekiq.server?
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
end

# Sidekiq::RetrySet.new.clear
#
# # Clear scheduled jobs
#
# Sidekiq::ScheduledSet.new.clear
#
# # Clear 'Dead' jobs statistics
#
# Sidekiq::DeadSet.new.clear
#
# # Clear 'Processed' and 'Failed' jobs statistics
#
# Sidekiq::Stats.new.reset