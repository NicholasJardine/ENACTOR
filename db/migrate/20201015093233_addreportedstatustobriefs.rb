class Addreportedstatustobriefs < ActiveRecord::Migration[5.2]
  def change
        add_column :briefs, :reported_status, :boolean, default: false

  end
end
