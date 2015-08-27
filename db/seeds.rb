# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Groups Upload

# require 'csv'

# file = File.open(Rails.root.join('lib', 'assets', 'groups.csv').to_s).read.scrub

# Group.destroy_all

# CSV.parse(file, :headers => true) do |row|
#   group = Group.new
#   group.name = row["name"]
#   group.twentyfive = row["twentyfive"]
#   group.fifty = row["fifty"]
#   group.five = row["five"]
#   group.seventyfive = row["seventyfive"]
#   group.ninetyfive = row["ninetyfive"]
#   group.mean = row["mean"]
#   group.median = row["median"]
#   group.std_dev = row["std_dev"]

#   group.save

#   end


# Groups Upload

# require 'csv'

# file = File.open(Rails.root.join('lib', 'assets', 'funds.csv').to_s).read.scrub

# Fund.destroy_all

# CSV.parse(file, :headers => true) do |row|
#   fund = Fund.new
#   fund.name = row["name"]
#   fund.score = row["score"]
#   fund.ticker = row["ticker"]
#   fund.inception_date = row["inception_date"]
#   fund.portfolio_date = row["portfolio_date"]
#   fund.equity_percentage = row["equity_percentage"]
#   fund.holdings = row["holdings"]
#   fund.group_name = row["group_name"]

#   group = Group.find_by({ :name => row["group_name"]})
#   fund.group_id = group.id

#   fund.save

#   end
