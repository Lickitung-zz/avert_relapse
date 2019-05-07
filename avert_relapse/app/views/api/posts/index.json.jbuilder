json.array! @posts.each do |post|
  json.id post.id
  json.text post.text
  json.likes post.likes
  json.dislikes post.dislikes
  json.published_by post.published_by
  json.published_date post.published_date
  json.updated_at post.updated_at
  json.comments post.comments
  json.profile_pic post.account.profile_pic
  json.name (post.account.first_name + ' ' + post.account.last_name)
end