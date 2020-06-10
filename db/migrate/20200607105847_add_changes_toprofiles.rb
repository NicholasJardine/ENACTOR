class AddChangesToprofiles < ActiveRecord::Migration[5.2]
  def change

    add_column :profiles, :age, :string
    add_column :profiles, :gender, :string
    add_column :profiles, :ethnicty, :string
    add_column :profiles, :language, :string
  end
end
