# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'uri'

require 'net/http'
require 'uri'

uri = URI.parse("https://api.clashroyale.com/v1/clans/%2322Y02P8R")
request = Net::HTTP::Get.new(uri)
request["Accept"] = "application/json"
request["Authorization"] = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImU1MjNlYzMzLWVkMTYtNDQ1NC05MDZkLTVlZjA3MWQ0YWM0MCIsImlhdCI6MTU4Mzg2OTIyNCwic3ViIjoiZGV2ZWxvcGVyL2M4NTk0ODQ2LWQxYTctYjg2NS01OTNhLTVhOGVkYWVhNjZlYSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxOTguMTYzLjE1MC4xMSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.Cdj6W8oNkMsFug0Efmhd-luNDZvVMHK423LPzLZMFIuIZr6HjZ2bdoUS8__r7XyKiCGsB1r1h6bAFf_mrRrruA"

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end
info = eval(response.body)
puts info
clan_name = info[:name]
clan_tag = info[:tag]
clan_country = "Canada"
#clan = Clan.create(tag: clan_tag, name: clan_name, country: clan_country)

member_list = info[:memberList]
member_list.each do | member |
  player_tag = member[:tag]
  player_name = member[:name]
  player_role = member[:role]
  player_donations = member[:donations]
  #clan.players.create(tag: player_tag, name: player_name, role: player_role, total_donations: player_donations)

  uri = URI.parse("https://api.clashroyale.com/v1/players/%23#{player_tag[1,8]}/battlelog")
  request = Net::HTTP::Get.new(uri)
  request["Accept"] = "application/json"
  request["Authorization"] = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImU1MjNlYzMzLWVkMTYtNDQ1NC05MDZkLTVlZjA3MWQ0YWM0MCIsImlhdCI6MTU4Mzg2OTIyNCwic3ViIjoiZGV2ZWxvcGVyL2M4NTk0ODQ2LWQxYTctYjg2NS01OTNhLTVhOGVkYWVhNjZlYSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxOTguMTYzLjE1MC4xMSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.Cdj6W8oNkMsFug0Efmhd-luNDZvVMHK423LPzLZMFIuIZr6HjZ2bdoUS8__r7XyKiCGsB1r1h6bAFf_mrRrruA"

  req_options = {
    use_ssl: uri.scheme == "https",
  }

  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)

  end
  info = eval(response.body)
  puts info
end



