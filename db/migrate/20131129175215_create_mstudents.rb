class CreateMstudents < ActiveRecord::Migration
  def change
    create_table :mstudents do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
