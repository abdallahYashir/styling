class Image < ApplicationRecord

  validates :caption, :business_id, :imageType_id, :photo, presence: true
  belongs_to :business
  belongs_to :imageType

  # has_attached_file :photo, styles: { medium: "300x300>", thumb: "25x25>" }, default_url: "/assets/images/missing.png"
  has_attached_file :photo
  # validates_attachment_content_type :photo, content_type: { content_type: /\Aimage\/.*\Z/ }

  validates_attachment_content_type :photo, :content_type => /\Aimage/

  validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/]

  # validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  # do_not_validate_attachment_file_type :photo

end
