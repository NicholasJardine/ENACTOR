class Addthingstousers < ActiveRecord::Migration[5.2]
  def change

            add_column :users, :services, :string
            add_column :users, :cell, :string
            add_column :users, :tel, :string
            add_column :users, :company_email, :string

  end
end
