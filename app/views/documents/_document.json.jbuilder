json.extract! document, :id, :title, :url, :img_preview, :description, :category, :user_id, :created_at, :updated_at
json.url document_url(document, format: :json)
