class RemoveIndexFromDashboards < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:dashboards, :user, index: true)
  end
end
