class Brief < ApplicationRecord
  has_many :auditions
  # has_many :user_briefs
  belongs_to :user
  validates :name, :age, :ethnicty, :gender, presence: true

   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

end
