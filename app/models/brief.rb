class Brief < ApplicationRecord
  has_many :auditions
  has_many :users, through: :user_briefs
  validates :name, :age, :ethnicty, :gender, presence: true

   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

end
