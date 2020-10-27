class Addshowtitletobriefs < ActiveRecord::Migration[5.2]
  def change
    add_column :briefs, :showtitle, :string

  end
end
