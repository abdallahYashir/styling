class Hour < ApplicationRecord
  belongs_to :day
  belongs_to :business
end
