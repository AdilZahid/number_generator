# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def generate_numbers

    require 'uri'
    require 'net/http'

    url = URI("https://temptaking.ado.sg/group/MemberSubmitTemperature?groupCode=8d4f0d34b43753de82e747cb09679631&date=19%2F04%2F2020&meridies=AM&memberId=27916&temperature=37.2&pin=1212")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/json'
    request["cache-control"] = 'no-cache'

    response = http.request(request)
    response_b = HTTParty.post('https://temptaking.ado.sg/group/MemberSubmitTemperature?groupCode=8d4f0d34b43753de82e747cb09679631&date=19%2F04%2F2020&meridies=AM&memberId=27916&temperature=37.2&pin=1212')
    debugger
    puts response.read_body
    # country_code = params[:country_code]
    # prefix = params[:prefix].to_i.to_s
    # number_of_time = params[:number_of_time].to_i
    # next_init = rand(111111...999999)
    # counter = 0
    # @number_array = []
    # while counter < number_of_time
    #   @number_array.push((country_code + prefix + next_init.to_s).to_i)
    #   next_init += 1
    #   counter += 1
    # end
    #debugger
    #     # for ($counter = 0; $counter < $total; $counter++)
    #     # {
    #     #     $k = $counter + 1;
    #     # // $next = rand(0000000, 9999999);
    #     # $imsi = $prefix[rand(0, count($prefix) - 1)];
    #     # $mobile_number = $imsi.$next_init;
    #     # $next_init ++;
    #     #
    #     # $content = $mobile_number.",";
    #     # fwrite($file, $content);
    #     # echo $k." Mobile Number : ".$mobile_number."<br /><br />";
    #     # set_time_limit(20);
    #     # }
  end
end
