json.array! @users.each do |user|
  json.id user.id
  json.email user.email
  json.account user.account
end