class Addstatustoauditions < ActiveRecord::Migration[5.2]
  def change
        add_column :auditions, :category, :string

  end
end
