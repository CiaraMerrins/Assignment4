class AddShippingaddressToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :shippingaddress, :string
  end
end
