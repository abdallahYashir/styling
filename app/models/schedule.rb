class Schedule < ApplicationRecord
  belongs_to :scheduleType
  belongs_to :business
end
