class Business < ApplicationRecord
  has_many :images
  belongs_to :type, optional: true
  validates :name, :address1, presence: true
end
