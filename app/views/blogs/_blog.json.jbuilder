json.extract! blog, :id, :baslik, :icerik, :created_at, :updated_at
json.url blog_url(blog, format: :json)
