class User < ApplicationRecord
  has_one_attached :photo
  has_many_attached :images

  has_many :briefs
  has_many :user_briefs
  has_many :private_invites

  has_many :applications
  has_many :private_briefs
  has_many :posts

  has_many :user_auditions
  has_many :auditions
  validates :accepted_terms, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
