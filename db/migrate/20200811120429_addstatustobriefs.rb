class Addstatustobriefs < ActiveRecord::Migration[5.2]
  def change
    add_column :briefs, :status, :string, default: "Pending"

  end
end
