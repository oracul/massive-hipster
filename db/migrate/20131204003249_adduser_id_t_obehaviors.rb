class AdduserIdTObehaviors < ActiveRecord::Migration
  def change
    add_column :behaviors, :user_id, :integer
  end
end
