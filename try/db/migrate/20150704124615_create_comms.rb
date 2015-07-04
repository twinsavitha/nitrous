class CreateComms < ActiveRecord::Migration
  def change
    create_table :comms do |t|
      t.string :name
      t.references :publish, index: true

      t.timestamps null: false
    end
    add_foreign_key :comms, :publishes
  end
end
