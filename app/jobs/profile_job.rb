class ProfileJob < ApplicationJob
  queue_as :am_jobs

  def perform(*args)
    # count = 7
    # c=1
    # while(count>c)
    #   puts " Profile #{DateTime.now}"
    #   SubJob.set(wait: c.minutes).perform_later(c)
    #   c = c + 1
    # end
    #
    puts " Profile z #{DateTime.now}"
    users = List.submission_am_profile
    if users.count > 0
      users.each do |u|
        en_time = rand(2..3)
        SubJob.set(wait: en_time.minutes).perform_later(u)
      end
    end

  end
end
