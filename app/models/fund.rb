class Fund < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => true
    validates :group_id, :presence => true

    belongs_to :group
    has_many :favorites

    mount_uploader :note, NoteUploader
end
