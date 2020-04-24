class ProfileJob < ApplicationJob
  queue_as :am_jobs

  def perform(*args)
    count = 10
    c=0
    while(count>c)
      puts " Profile #{DateTime.now}"
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
