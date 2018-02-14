class AddAddressContactToBusiness < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :address1, :string
    add_column :businesses, :address2, :string
    add_column :businesses, :zipcode, :integer
    add_column :businesses, :phone_no, :integer
    add_column :businesses, :mobile_no, :integer
    add_column :businesses, :email, :string
    add_column :businesses, :fax, :integer
  end
end
