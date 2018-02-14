class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :src
      t.references :business, foreign_key: true
      t.references :imageType, foreign_key: true

      t.timestamps
    end
  end
end
