json.extract! texto, :id, :title, :body, :created_at, :updated_at
json.url texto_url(texto, format: :json)
