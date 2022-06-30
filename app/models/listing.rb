class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_rich_text :description
end
