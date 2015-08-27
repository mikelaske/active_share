# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

file = File.open(Rails.root.join('lib', 'assets', 'funds.csv').to_s).read.scrub

Fund.destroy_all

CSV.parse(file, :headers => true) do |row|
  fund = Fund.new
  fund.name = row["name"]
  fund.score = row["score"]
  fund.ticker = row["ticker"]
  fund.inception_date = row["inception_date"]
  fund.portfolio_date = row["portfolio_date"]
  fund.equity_percentage = row["equity_percentage"]
  fund.holdings = row["holdings"]
  fund.group_name = row["group_name"]

  group = Group.find_by({ :name => row["group_name"]})
  fund.group_id = group.id

  fund.save

end
