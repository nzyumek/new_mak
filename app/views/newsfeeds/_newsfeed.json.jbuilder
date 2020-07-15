json.extract! newsfeed, :id, :title, :date, :content, :created_at, :updated_at
json.url newsfeed_url(newsfeed, format: :json)
