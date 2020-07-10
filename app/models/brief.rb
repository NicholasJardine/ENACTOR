class Brief < ApplicationRecord
  has_many :auditions
  # has_many :user_briefs
  belongs_to :user
  validates :name, :age_range, :ethnicty, :gender, presence: true
  has_one_attached :scene


   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

end
