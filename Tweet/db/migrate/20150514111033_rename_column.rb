class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :publishes, :genre, :group
  end
end
