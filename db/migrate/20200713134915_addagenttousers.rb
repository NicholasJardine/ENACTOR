class Addagenttousers < ActiveRecord::Migration[5.2]
  def change
            add_column :users, :agent_details, :text

  end
end
