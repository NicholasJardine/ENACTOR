class Addprovincetousers < ActiveRecord::Migration[5.2]
  def change
                    add_column :users, :province, :string


  end
end
