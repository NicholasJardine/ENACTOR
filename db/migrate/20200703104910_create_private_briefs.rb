class CreatePrivateBriefs < ActiveRecord::Migration[5.2]
  def change
    create_table :private_briefs do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :ethnicty
      t.string :language
      t.string :marital_status
      t.string :attachment
      t.references :user, foreign_key: true
      t.integer :sender_id

      t.timestamps
    end
  end
end
