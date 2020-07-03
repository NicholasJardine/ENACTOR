class Addreferencetobriefs < ActiveRecord::Migration[5.2]
  def change
    add_reference :briefs, :user, foreign_key: true

  end
end
