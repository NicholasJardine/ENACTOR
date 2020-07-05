class PrivateAudition < ApplicationRecord
  belongs_to :user
  belongs_to :private_brief

  has_one_attached :video

end
