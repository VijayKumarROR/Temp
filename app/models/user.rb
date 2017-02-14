class User < ApplicationRecord
validates_presence_of :project
validates_presence_of :hour
has_attached_file :image
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
