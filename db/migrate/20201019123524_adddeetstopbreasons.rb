class Adddeetstopbreasons < ActiveRecord::Migration[5.2]
  def change
                add_column :pbreasons, :human_trafficking, :boolean, default: false
            add_column :pbreasons, :unsafe, :boolean, default: false
            add_column :pbreasons, :sexual_content, :boolean, default: false
            add_column :pbreasons, :child_abuse, :boolean, default: false
            add_column :pbreasons, :not_legit, :boolean, default: false
            add_reference :pbreasons, :user, foreign_key: true
            add_reference :pbreasons, :private_brief, foreign_key: true

  end
end
