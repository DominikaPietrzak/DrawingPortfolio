class ComicChapter < ApplicationRecord

  has_attached_file :chaptercover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :chaptercover, content_type: /\Aimage\/.*\z/

  belongs_to :comic_book, dependent: :destroy
  belongs_to :user
end
