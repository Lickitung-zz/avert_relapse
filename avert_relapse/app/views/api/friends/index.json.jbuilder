json.array! @friends.each do |friend|
  json.id friend.id
  json.first_name friend.first_name
  json.last_name friend.last_name
  json.email friend.email
  json.account_id friend.account_id
end
