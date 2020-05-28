class Audition < ApplicationRecord
  belongs_to :actor
  belongs_to :brief
  belongs_to :dashboard
  validates :title, :vids presence: true

end
