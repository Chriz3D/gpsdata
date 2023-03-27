class Track < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  
  def parseGpx
  
  end
    
end
