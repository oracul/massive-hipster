class AddUseridToMstudents < ActiveRecord::Migration
  def change
    add_column :mstudents, :user_id, :integer
  end
end
