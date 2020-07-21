class Addparastoarticle < ActiveRecord::Migration[5.2]
  def change
      add_column :articles, :paragraph_one, :text
      add_column :articles, :paragraph_two, :text
      add_column :articles, :paragraph_three, :text
      add_column :articles, :paragraph_four, :text
      add_column :articles, :paragraph_five, :text
      add_column :articles, :paragraph_six, :text
    end
end
