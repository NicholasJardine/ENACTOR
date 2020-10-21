class Addprovincetobrief < ActiveRecord::Migration[5.2]
  def change
                    add_column :briefs, :province, :string

  end
end
