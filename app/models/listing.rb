class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_rich_text :description
  has_one_attached :cover

  enum condition: {
    poor: 1,
    fair: 2,
    good: 3,
    good_plus: 4,
    very_good: 5,
    very_good_plus: 6,
    near_mint: 7,
    mint: 8
  }
end
