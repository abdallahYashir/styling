json.extract! image, :id, :caption, :src, :business_id, :imageType_id, :created_at, :updated_at
json.url image_url(image, format: :json)
