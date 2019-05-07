json.array! @comments.each do |comment|
  json.id comment.id
  json.body comment.body
end