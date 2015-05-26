class RemoveCategoryFromPublish < ActiveRecord::Migration
  def change
    remove_column :publishes, :category, :string
  end
end
