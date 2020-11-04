class User < ApplicationRecord
  has_one_attached :photo
  has_one_attached :cv

  has_many_attached :images

  has_many :briefs, dependent: :destroy
  has_many :reasons, dependent: :destroy
  has_many :user_briefs, dependent: :destroy
  has_many :private_invites
  has_many :pbreasons
  has_many :applications, dependent: :destroy
  has_many :private_briefs, dependent: :destroy
  has_many :posts, dependent: :destroy
has_many :account_complaints, dependent: :destroy
  has_many :user_auditions
  has_many :auditions
  validates :accepted_terms, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
