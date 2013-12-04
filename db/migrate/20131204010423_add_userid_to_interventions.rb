class AddUseridToInterventions < ActiveRecord::Migration
  def change
    add_column :interventions, :user_id, :integer
  end
end
