class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :vids
      t.string :pics
      t.string :name
      t.text :skills
      t.text :experience

      t.timestamps
    end
  end
end
