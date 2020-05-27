class CreateBriefs < ActiveRecord::Migration[5.2]
  def change
    create_table :briefs do |t|
      t.string :docs
      t.references :production_company, foreign_key: true

      t.timestamps
    end
  end
end
