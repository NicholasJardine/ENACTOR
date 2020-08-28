class Adddeetstopbs < ActiveRecord::Migration[5.2]
  def change
    add_column :private_briefs, :profession, :string
    add_column :private_briefs, :hometown, :string
    add_column :private_briefs, :current_home, :string
    add_column :private_briefs, :wants, :text
    add_column :private_briefs, :needs, :text
    add_column :private_briefs, :flaws, :text
    add_column :private_briefs, :traits, :text
    add_column :private_briefs, :arc_summary, :text
  end
end
