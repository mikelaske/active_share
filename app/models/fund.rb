class Fund < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => true

    belongs_to :group

    has_many :favorites
    has_many :user_ids, :through => :favorites
    has_many :usernames, :through => :favorites
    has_many :fund_ids, :through => :favorites

    mount_uploader :notes, NotesUploader

end


