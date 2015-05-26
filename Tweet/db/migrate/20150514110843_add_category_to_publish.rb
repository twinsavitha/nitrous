class AddCategoryToPublish < ActiveRecord::Migration
  def change
    add_column :publishes, :category, :string
  end
end
