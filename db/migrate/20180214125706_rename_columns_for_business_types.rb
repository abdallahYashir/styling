class RenameColumnsForBusinessTypes < ActiveRecord::Migration[5.1]
  def change
    remove_index :businesses, :businessType_id
    rename_table :business_types, :types
    rename_column :businesses, :businessType_id, :type_id
    add_index :businesses, :type_id
    add_foreign_key :businesses, :types, column: :type_id
  end
end
