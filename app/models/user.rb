class User < ApplicationRecord
  has_one_attached :photo
  has_many :user_briefs
  has_many :briefs
  has_many :private_briefs

  # has_many :user_auditions
  has_many :auditions


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
