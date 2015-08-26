class AddDetailsToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :mean, :float
    add_column :groups, :median, :float
    add_column :groups, :std_dev, :float
    add_column :groups, :five, :float
    add_column :groups, :twentyfive, :float
    add_column :groups, :fifty, :float
    add_column :groups, :seventyfive, :float
    add_column :groups, :ninetyfive, :float
  end
end
