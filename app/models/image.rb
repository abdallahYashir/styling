class Image < ApplicationRecord
  belongs_to :business
  belongs_to :imageType
end
