class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :appoint_id, :auto_increment => true
      t.string :pet
      t.date :date_of_visit
      t.string :customer
      t.string :reason
      t.boolean :requires_reminder

      t.timestamps null: false
    end
  end
end
