class Addcontactdeetsstousers < ActiveRecord::Migration[5.2]
  def change
          add_column :users, :contact_details, :text
  end
end
