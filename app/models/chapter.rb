class Chapter < ApplicationRecord
  belongs_to :comics
  has_many :comics_pages
end
