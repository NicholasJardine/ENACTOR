class AdddetailstoaccountComplaints < ActiveRecord::Migration[5.2]
  def change
            add_reference :account_complaints, :user, foreign_key: true
            add_column :account_complaints, :custom, :text
            add_column :reasons, :custom, :text

  end
end
