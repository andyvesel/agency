class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text :contact
      t.boolean :search
      t.integer :salary

      t.timestamps null: false
    end
  end
end
