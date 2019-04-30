json.array! @accounts.each do |account|
  json.id account.id
  json.first_name account.first_name
  json.last_name account.last_name
  json.phone_number account.phone_number
  json.message account.messages
  json.profile_pic account.profile_pic
  json.user_id account.user_id
end