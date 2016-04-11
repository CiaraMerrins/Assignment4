class AddBudgetToPins < ActiveRecord::Migration
  def change
    add_column :pins, :budget, :decimal
  end
end
