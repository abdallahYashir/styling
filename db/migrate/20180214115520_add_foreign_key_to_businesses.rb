class AddForeignKeyToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :businesses, :businessTypes, column: :businessType
  end
end
