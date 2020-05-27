class CreateProductionCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :production_companies do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.string :address
      t.integer :postal_code
      t.string :province
      t.string :city

      t.timestamps
    end
  end
end
