class ComicBook < ApplicationRecord
  has_many :comic_chapters
  belongs_to :user
  has_attached_file :comiccover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :comiccover, content_type: /\Aimage\/.*\z/


end
