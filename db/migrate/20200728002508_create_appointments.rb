class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.date :time
      t.string :status
      t.integer :city_id
      t.integer :neighborhood_id
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
