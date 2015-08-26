class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :fund_id, :presence => true

  belongs_to :user
  belongs_to :dish
end
