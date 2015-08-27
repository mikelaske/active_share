class Fund < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => true

    belongs_to :group
    has_many :favorites

    mount_uploader :notes, NotesUploader
end
