class AddPrivatebriefToauditions < ActiveRecord::Migration[5.2]
  def change
    add_reference :auditions, :private_brief, foreign_key: true
  end
end
