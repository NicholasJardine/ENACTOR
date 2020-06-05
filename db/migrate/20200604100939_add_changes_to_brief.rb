class AddChangesToBrief < ActiveRecord::Migration[5.2]
  def change
    add_column :briefs, :name, :string
    add_column :briefs, :age, :string
    add_column :briefs, :gender, :string
    add_column :briefs, :ethnicty, :string
    add_column :briefs, :language, :string
    add_column :briefs, :marital_status, :string
    add_column :briefs, :profession, :string
    add_column :briefs, :hometown, :string
    add_column :briefs, :current_home, :string
    add_column :briefs, :wants, :text
    add_column :briefs, :needs, :text
    add_column :briefs, :flaws, :text
    add_column :briefs, :traits, :text
    add_column :briefs, :arc_summary, :text

  end
end
