class Image < ApplicationRecord
  validates :caption, :src, :business_id, :imageType_id, presence: true
  belongs_to :business
  belongs_to :imageType
end
