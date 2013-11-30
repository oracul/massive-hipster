class AddBehiveToStudent < ActiveRecord::Migration
  def change
    add_column :students, :behive, :string
  end
end
