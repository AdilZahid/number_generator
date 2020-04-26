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
    p1 =  ProfileJobStatus.find 1
    p2 =  ProfileJobStatus.find 2
    p1.update!(my_job_status: Time.zone.now)
    p2.update!(my_job_status: Time.zone.now)
    users = List.submission_am_profile
    if users.count > 0
      users.each do |u|
        en_time = rand(2..180)
        SubJob.set(wait: en_time.minutes).perform_later(u)
      end
    end

  end
end
