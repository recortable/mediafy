class Bucket < ActiveRecord::Base
  has_attached_file :media, :styles => { :small => "150x150>" },
                  :url  => "/assets/buckets/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/buckets/:id/:style/:basename.:extension"

validates_attachment_presence :media

end
