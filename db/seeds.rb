# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'uri'

clan_uri = URI.parse("https://api.clashroyale.com/v1/clans/%2322Y02P8R")
clan_request = Net::HTTP::Get.new(clan_uri)
clan_request["Accept"] = "application/json"
clan_request["Authorization"] = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6Ijc0Y2U1MTgyLTlhMDQtNGMwOS05ODNmLTAzMzcwNWRjYjI0YSIsImlhdCI6MTU4Mzg5NzA4OCwic3ViIjoiZGV2ZWxvcGVyL2M4NTk0ODQ2LWQxYTctYjg2NS01OTNhLTVhOGVkYWVhNjZlYSIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxNDIuMTYwLjI2LjgyIl0sInR5cGUiOiJjbGllbnQifV19.q9AXNY-slsw9RB5qnGRD1PFkkBA9cEOyJpIm7NccpQZQ4AXBkDpm-Xh0qOpah7JshiTXFA5cSqf1EI0B1FqJVw"

clan_req_options = {
  use_ssl: clan_uri.scheme == "https",
}

clan_response = Net::HTTP.start(clan_uri.hostname, clan_uri.port, clan_req_options) do |http|
  http.request(clan_request)
end
info = eval(clan_response.body)

clan_name = info[:name]
puts clan_name
clan_tag = info[:tag]
clan_country = "Canada"
clan = Clan.create(tag: clan_tag, name: clan_name, country: clan_country)

member_list = info[:memberList]
member_list.each do | member |
 player_tag = member[:tag]
 player_role = member[:role]
 player_donations = member[:donations]
 clan.players.create(tag: player_tag, role: player_role, total_donations: player_donations)
end