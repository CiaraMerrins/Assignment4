class AddPaymentmethodToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :paymentmethod, :string
  end
end
