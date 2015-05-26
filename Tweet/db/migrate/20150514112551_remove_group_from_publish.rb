class RemoveGroupFromPublish < ActiveRecord::Migration
  def change
    remove_column :publishes, :group, :string
  end
end
