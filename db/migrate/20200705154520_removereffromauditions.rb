class Removereffromauditions < ActiveRecord::Migration[5.2]
  def change
        remove_reference(:auditions, :private_brief, index: true)

  end
end
