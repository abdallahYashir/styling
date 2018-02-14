class CreateBusinessTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :business_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
