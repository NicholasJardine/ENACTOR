class AddtitletoprivateBriefs < ActiveRecord::Migration[5.2]
  def change
        add_column :private_briefs, :title, :string

  end
end
