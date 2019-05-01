json.array! @posts.each do |post|
  json.id post.id
  json.text post.text
  json.created_at post.created_at
  json.updated_at post.updated_at
end