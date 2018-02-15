class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.text :address1
      t.text :address2
      t.integer :zipcode
      t.integer :phone_no
      t.integer :mobile_no
      t.string :email
      t.integer :fax
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
