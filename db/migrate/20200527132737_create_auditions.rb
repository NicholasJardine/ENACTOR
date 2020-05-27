class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :title
      t.string :vids
      t.string :pics
      t.references :actor, foreign_key: true
      t.references :brief, foreign_key: true
      t.references :dashboard, foreign_key: true

      t.timestamps
    end
  end
end
