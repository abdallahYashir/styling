class Business < ApplicationRecord
  belongs_to :type
  validates :name, :address1, presence: true
end
