class Audition < ApplicationRecord
  has_many :user_auditions, dependent: :destroy
  has_many :users, through: :user_auditions
  belongs_to :brief
  has_one_attached :video
end
