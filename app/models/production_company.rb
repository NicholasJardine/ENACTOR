class ProductionCompany < User
  belongs_to :user
    validates :title, :address, presence: true, uniqueness: true
    validates :postal_code, :address, :city, :province, presence: true

end
