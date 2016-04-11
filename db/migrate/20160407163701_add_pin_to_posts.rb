class AddPinToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :pin, index: true
  end
end
