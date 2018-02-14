class ChangeColTypeToBusiness < ActiveRecord::Migration[5.1]
  def change
    remove_column :businesses, :businessType_id
  end
end
