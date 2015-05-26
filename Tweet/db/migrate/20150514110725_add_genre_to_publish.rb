class AddGenreToPublish < ActiveRecord::Migration
  def change
    add_column :publishes, :genre, :string
  end
end
