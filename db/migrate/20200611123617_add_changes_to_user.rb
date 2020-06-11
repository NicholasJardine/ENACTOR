class AddChangesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :string
    add_column :users, :gender, :string
    add_column :users, :ethnicty, :string
    add_column :users, :language, :string
    add_column :users, :marital_status, :string
    add_column :users, :profession, :string
    add_column :users, :city, :string
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :province, :string
    add_column :users, :photo, :string
  end
end
