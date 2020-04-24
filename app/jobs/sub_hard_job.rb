class SubHardJob < ApplicationJob
  queue_as :pm_jobs

  def perform(count)
    puts "SubHardjob #{count} SubHardJoB #{DateTime.now}"
    # Snippet For Automatically generate and submission of form
    # require 'uri'
    # require 'net/http'
    # d = CGI.escape(DateTime.now.strftime("%d/%m/%Y"))
    # u = List.last
    # baseUrl = 'https://temptaking.ado.sg/group/MemberSubmitTemperature?groupCode=8d4f0d34b43753de82e747cb09679631&'
    # end_url = "date=#{d}&meridies=#{u.meridies}&memberId=#{u.member_id}&temperature=37.5&pin=#{u.pin_code}"
    # final_url = baseUrl.concat(end_url)
    # url = URL(final_url)
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    # request = Net::HTTP::Post.new(url)
    # request["content-type"] = 'application/json'
    # request["cache-control"] = 'no-cache'
    # response = http.request(request)
    # puts " Response #{response.read_body}"
    # Snippet For Automatically generate and submission of form
  end
end
