class Addattachmenttobriefsandprivatebriefs < ActiveRecord::Migration[5.2]
  def change
        add_column :briefs, :scene, :string
        add_column :private_briefs, :scene, :string


  end
end
