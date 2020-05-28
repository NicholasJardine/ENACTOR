class Actor < User
  belongs_to :user
  validates :name, :surname, :age, :race, :gender, :location, presence: true
end
