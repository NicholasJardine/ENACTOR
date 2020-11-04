class Brief < ApplicationRecord
  belongs_to :user
  has_many :auditions
  has_many :reasons
  has_many :user_briefs, dependent: :destroy
  has_many :users, through: :user_briefs

  validates :name, :age_range, :ethnicty, :gender, presence: true
  has_one_attached :scene


   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

end
