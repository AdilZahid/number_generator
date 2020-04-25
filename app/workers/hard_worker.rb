class HardWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'pm_jobs'
  def perform(*args)
    # count = 4
    # c=1
    # while(count>c)
    #   puts " Hard #{DateTime.now}"
    #   SubHardJob.set(wait: c.minutes).perform_later(c)
    #   c = c + 1
    # end
    # 0 0 5 * * 1,2,3,4,5
    # 0 12 * * 1,2,3,4,5
    #
    # 0 5 * * *
    # 0 12 * * *
    puts " Hard z #{DateTime.now}"
    users = List.submission_pm_profile
    if users.count > 0
      users.each do |u|
        en_time = rand(2..3)
        SubHardJob.set(wait: en_time.minutes).perform_later(u)
      end
    end
  end
end
