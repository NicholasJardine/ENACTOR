class AddattAthcmentToBriefs < ActiveRecord::Migration[5.2]
  def change
        add_column :briefs, :attachment, :string

  end
end
