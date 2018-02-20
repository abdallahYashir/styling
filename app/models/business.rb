class Business < ApplicationRecord
  belongs_to :type, optional: true
  validates :name, :address1, presence: true
end
