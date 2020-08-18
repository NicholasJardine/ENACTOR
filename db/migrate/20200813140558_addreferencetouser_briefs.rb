class AddreferencetouserBriefs < ActiveRecord::Migration[5.2]
  def change
        add_reference :user_briefs, :private_brief, foreign_key: true

  end
end
