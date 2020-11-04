class PrivateInvite < ApplicationRecord
  belongs_to :user
  belongs_to :private_brief
  has_many :acceptances, dependent: :destroy
end
