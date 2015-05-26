class AddcolumnToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :rolle, :string
  end
end
