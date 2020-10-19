class PrivateBrief < ApplicationRecord
  # belongs_to :user
  has_many :users, through: :private_invites
  has_many :private_invites
  has_many :pbreasons

end
