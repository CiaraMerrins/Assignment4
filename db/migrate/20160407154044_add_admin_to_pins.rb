class AddAdminToPins < ActiveRecord::Migration
  def change
    add_reference :pins, :admin, index: true
  end
end
