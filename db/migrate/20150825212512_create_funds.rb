class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.integer :group_id
      t.float :score
      t.string :name

      t.timestamps

    end
  end
end
