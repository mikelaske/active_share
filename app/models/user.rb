class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

  has_many :favorites

  has_one :profile
  accepts_nested_attributes_for :profile

end
