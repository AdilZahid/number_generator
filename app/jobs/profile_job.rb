class ProfileJob < ApplicationJob
  queue_as :am_jobs

  def perform(*args)
    count = 7
    c=1
    while(count>c)
      puts " Profile #{DateTime.now}"
      SubJob.set(wait: c.minutes).perform_later(c)
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
