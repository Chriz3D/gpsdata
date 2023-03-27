class Track < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  
  def parseGpx
     doc = Nokogiri::XML(open("public/" + self.attachment_url))
     #trackpoints = doc.xpath('//xmlns:trkpt')
     starttime = doc.xpath('//xmlns:time')
     
     if(starttime != nil && starttime.length > 0)
        return starttime[0].text
     else 
        return ""
     end   
  end
    
end
