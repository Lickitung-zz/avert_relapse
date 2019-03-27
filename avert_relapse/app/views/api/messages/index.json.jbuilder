json.array! @messages.each do |message|
  json.text message.text
  json.account_id message.account_id
  json.contact_id message.contact_id
end