class AddInterventionToStudent < ActiveRecord::Migration
  def change
    add_column :students, :intervention_type, :string
  end
end
