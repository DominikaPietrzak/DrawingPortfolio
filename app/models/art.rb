class Art < ApplicationRecord
  has_attached_file :imageart, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :imageart, content_type: /\Aimage\/.*\z/
end
