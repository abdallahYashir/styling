json.extract! business, :id, :name, :description, :active, :address1, :address2, :zipcode, :phone_no, :mobile_no, :email, :fax, :type_id, :created_at, :updated_at
json.url business_url(business, format: :json)
