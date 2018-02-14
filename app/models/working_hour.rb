class WorkingHour < ApplicationRecord
  belongs_to :days
  belongs_to :business
end
