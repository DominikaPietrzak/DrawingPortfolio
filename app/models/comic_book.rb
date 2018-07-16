class ComicBook < ApplicationRecord
  has_many :comic_chapters
  belongs_to :user
end
