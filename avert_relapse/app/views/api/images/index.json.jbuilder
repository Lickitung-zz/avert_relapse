json.array! @images.each do |image|
  json.id image.id
  json.image_source image.image_source
  json.created_at image.created_at
  json.updated_at image.updated_at
end