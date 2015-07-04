class CreateZombs < ActiveRecord::Migration
  def change
    create_table :zombs do |t|
      t.string :name
      t.string :graveyard

      t.timestamps null: false
    end
  end
end
