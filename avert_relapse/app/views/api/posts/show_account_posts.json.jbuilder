json.array! @posts.each do |post|
  json.id post.id
  json.text post.text
  json.published_by post.published_by
  json.published_date post.published_date
  json.updated_at post.updated_at
end