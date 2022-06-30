json.extract! listing, :id, :title, :artist, :label, :condition, :description, :price, :sold, :user_id, :genre_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
json.description listing.description.to_s
