class CreateInterventions < ActiveRecord::Migration
  def change
    create_table :interventions do |t|
      t.string :sfname
      t.string :slname
      t.string :intervention

      t.timestamps
    end
  end
end
