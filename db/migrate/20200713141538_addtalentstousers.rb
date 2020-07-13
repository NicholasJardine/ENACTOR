class Addtalentstousers < ActiveRecord::Migration[5.2]
  def change
                add_column :users, :talents, :string

  end
end
