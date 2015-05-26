class CreatePublishes < ActiveRecord::Migration
  def change
    create_table :publishes do |t|
      t.string :topic
      t.text :text

      t.timestamps null: false
    end
  end
end
