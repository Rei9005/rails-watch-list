class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 5 }
  validates :movie, uniqueness: { scope: :list }
end
