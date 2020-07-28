class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.date :time
      t.string :status
      t.integer :client_id
      t.integer :stylist_id
      t.integer :city_id
      t.integer :neighborhood_id
      t.timestamps
    end
  end
end
