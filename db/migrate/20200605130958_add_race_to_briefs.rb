class AddRaceToBriefs < ActiveRecord::Migration[5.2]
  def change
            add_column :briefs, :race, :string
  end
end
