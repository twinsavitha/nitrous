class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer :publish_id
      t.string :name

      t.timestamps null: false
    end
  end
end
