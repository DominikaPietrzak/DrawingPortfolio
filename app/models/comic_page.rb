class ComicPage < ApplicationRecord
  belongs_to :comic_chapter, dependent: :destroy
  belongs_to :user
  has_attached_file :comicimage, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :comicimage, content_type: /\Aimage\/.*\z/

end
