class Addprovincetoapplication < ActiveRecord::Migration[5.2]
  def change
     add_column :applications, :province, :string
  end
end
