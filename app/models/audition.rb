class Audition < ApplicationRecord
  belongs_to :actor
  belongs_to :brief
  belongs_to :dashboard
  has_one_attached :vids
end
