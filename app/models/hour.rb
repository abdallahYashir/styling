class Hour < ApplicationRecord
  belongs_to :day
  belongs_to :business
  validates :day, uniqueness: true
end
