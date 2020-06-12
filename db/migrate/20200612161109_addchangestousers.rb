class Addchangestousers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skills, :text
    add_column :users, :location, :string
    add_column :users, :experience, :text
    add_column :users, :suburb, :string

  end
end
