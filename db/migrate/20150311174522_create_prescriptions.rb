class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :pet_name
      t.string :type_of_pet
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :date_of_last_visit

      t.timestamps null: false
    end
  end
end
