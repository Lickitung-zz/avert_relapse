json.array! @accounts.each do |account|
  json.id account.id
  json.name account.name
  json.phone_number account.phone_number
  json.message account.messages
  json.user_id account.user_id
end