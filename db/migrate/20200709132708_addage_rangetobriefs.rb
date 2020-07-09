class AddageRangetobriefs < ActiveRecord::Migration[5.2]
  def change
        add_column :briefs, :age_range, :string

  end
end
