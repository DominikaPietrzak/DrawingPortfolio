class ComicChapter < ApplicationRecord
  belongs_to :comic_book
  belongs_to :user
end
