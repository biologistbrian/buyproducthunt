json.extract! product, :id, :name, :creator_id, :ph_id, :ph_url, :ph_topic, :topic_id, :ph_likes, :ph_comments, :ph_launchdate, :created_at, :updated_at
json.url product_url(product, format: :json)
