class RemoveReferenceFromBriefs < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:briefs, :production_company, index: true)

  end
end
