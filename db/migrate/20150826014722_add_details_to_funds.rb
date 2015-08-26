class AddDetailsToFunds < ActiveRecord::Migration
  def change
    add_column :funds, :ticker, :string
    add_column :funds, :inception_date, :date
    add_column :funds, :portfolio_date, :date
    add_column :funds, :equity_percentage, :float
    add_column :funds, :notes, :text
    add_column :funds, :holdings, :integer
  end
end
