json.array! @accounts.each do |account|
  json.name account.name
  json.phone_number account.phone_number
  json.user_id account.user_id
end