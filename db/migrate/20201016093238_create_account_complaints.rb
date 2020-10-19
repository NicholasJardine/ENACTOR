class CreateAccountComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :account_complaints do |t|

      t.timestamps
    end
  end
end
