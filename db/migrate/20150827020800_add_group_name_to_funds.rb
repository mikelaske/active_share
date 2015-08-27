class AddGroupNameToFunds < ActiveRecord::Migration
  def change
    add_column :funds, :group_name, :string
    remove_column :funds, :group_id, :integer


  end
end
