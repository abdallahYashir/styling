class AddBusinessTypeAgainToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_reference :businesses, :businessType, foreign_key: true
  end
end
