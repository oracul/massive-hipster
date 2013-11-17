class CreateBehaviors < ActiveRecord::Migration
  def change
    create_table :behaviors do |t|
      t.string :behavior
      t.string :intervention
      t.string :consequence

      t.timestamps
    end
  end
end
