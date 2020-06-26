class AddVideoToAuditions < ActiveRecord::Migration[5.2]
  def change
    add_column :auditions, :video, :string
  end
end
