json.array! @comments.each do |comment|
  json.id comment.id
  json.body comment.body
  json.published_by comment.published_by
  json.profile_pic comment.profile_pic
end