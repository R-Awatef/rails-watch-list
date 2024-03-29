class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # has_one_attached :photo

  validates :comment, length: {minimum: 6}
  validates :movie_id, uniqueness: {scope: :list_id, message: "is already in the list"}
end
