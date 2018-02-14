class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
