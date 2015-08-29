class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :fund_id, :presence => true

  belongs_to :user
  belongs_to :username
  belongs_to :fund
  belongs_to :name

  has_many :user_ids
  has_many :usernames
  has_many :fund_ids
  has_many :names
end
