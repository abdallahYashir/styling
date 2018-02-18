class Day < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
