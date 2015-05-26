class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :empid
      t.string :name
      t.integer :attempts

      t.timestamps null: false
    end
  end
end
