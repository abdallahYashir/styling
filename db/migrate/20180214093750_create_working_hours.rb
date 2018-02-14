class CreateWorkingHours < ActiveRecord::Migration[5.1]
  def change
    create_table :working_hours do |t|
      t.references :days, foreign_key: true
      t.boolean :active
      t.time :time_start
      t.time :time_end
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
