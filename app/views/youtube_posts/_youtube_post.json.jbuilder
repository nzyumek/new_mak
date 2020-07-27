json.extract! youtube_post, :id, :title, :created_at, :updated_at
json.url youtube_post_url(youtube_post, format: :json)
