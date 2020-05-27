class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :race
      t.string :gender
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
