class SubJob < ApplicationJob
  queue_as :am_jobs

  def perform(u)
    puts "Subjob #{u.name} SubJoB #{DateTime.now}"
    # Snippet For Automatically generate and submission of form
    # require 'uri'
    # require 'net/http'
    # d = CGI.escape(Time.zone.now.strftime("%d/%m/%Y"))
    # temper = rand(35.6..37.3).round(1)
    # baseUrl = 'https://temptaking.ado.sg/group/MemberSubmitTemperature?groupCode=8d4f0d34b43753de82e747cb09679631&'
    # end_url = "date=#{d}&meridies=#{u.meridies}&memberId=#{u.member_id}&temperature=#{temper}&pin=#{u.pin_code}"
    # final_url = baseUrl.concat(end_url)
    # url = URI(final_url)
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    # request = Net::HTTP::Post.new(url)
    # request["content-type"] = 'application/json'
    # request["cache-control"] = 'no-cache'
    # response = http.request(request)
    # u.update!(submit_status: response.read_body, process_at: Time.zone.now)
    # Snippet For Automatically generate and submission of form
  end
end
