class AddGroupIdToFund < ActiveRecord::Migration
  def change
    add_column :funds, :group_id, :integer
  end
end
