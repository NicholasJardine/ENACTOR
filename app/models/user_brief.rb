class UserBrief < ApplicationRecord
  belongs_to :user
  belongs_to :brief
  has_many :applications
end
