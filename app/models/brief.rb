class Brief < ApplicationRecord

  validates :name, :age, :ethnicty, :gender, presence: true

   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

end
