class HardWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'pm_jobs'
  def perform(*args)
    count = 3
    c=1
    while(count>c)
      puts " Hard #{DateTime.now}"
      #SubHardJob.set(wait: c.minutes).perform_later(c)
      c = c + 1
    end
    # users = List.where(meridies: "AM")
    # if users.count > 0
    #   users.each do |u|
    #     SubJob.set(wait: c.minutes).perform_later(c)
    #   end
    # end
  end
end
