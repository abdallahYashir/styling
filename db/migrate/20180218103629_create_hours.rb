class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.references :day, foreign_key: true
      t.boolean :active
      t.time :time_start
      t.time :time_end
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
