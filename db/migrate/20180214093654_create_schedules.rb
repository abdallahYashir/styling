class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.references :scheduleType, foreign_key: true
      t.datetime :date
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
