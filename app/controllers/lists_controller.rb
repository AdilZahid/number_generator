class ListsController < ApplicationController
  def new
    @list = List.new
  end
  def create
    # require 'uri'
    # require 'net/http'
    #debugger
    #CGI.escape('22/04/2020')
    #CGI.unescape('22%2F04%2F2020')
    #a = URI.escape('22/04/2020')
    #url = URI('https://temptaking.ado.sg/group/MemberSubmitTemperature?groupCode=8d4f0d34b43753de82e747cb09679631&date=22%2F04%2F2020&meridies=PM&memberId=28071&temperature=36.3&pin=2580')

    #http = Net::HTTP.new(url.host, url.port)
    #http.use_ssl = true
    #http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    #request = Net::HTTP::Post.new(url)
    #request["content-type"] = 'application/json'
    #request["cache-control"] = 'no-cache'

    #response = http.request(request)
    #response_b = HTTParty.post('https://temptaking.ado.sg/group/MemberSubmitTemperature?groupCode=8d4f0d34b43753de82e747cb09679631&date=22%2F04%2F2020&meridies=PM&memberId=28071&temperature=36.3&pin=2580')
    #debugger
    #puts response.read_body

    if List.create!(name: params[:list][:name], pin_code: params[:list][:pin_code].to_i, member_id: params[:list][:member_id], meridies: params[:meridies])
      redirect_to new_list_path, success: 'Profile was successfully created.'
    end
  end
  def list_params
    params.require(:list).permit(:id, :name, :pin_code, :time_mode)
  end
end
