class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :title
      t.datetime :added
      t.datetime :expiration
      t.integer :salary
      t.text :contacts

      t.timestamps null: false
    end
  end
end
