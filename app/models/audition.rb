class Audition < ApplicationRecord
  has_many :users, through: :user_auditions
  belongs_to :brief
  has_one_attached :vids
end
