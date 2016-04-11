class AddImageFilenameToPins < ActiveRecord::Migration
  def change
    add_column :pins, :image_filename, :string
  end
end
