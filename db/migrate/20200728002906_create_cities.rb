class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city
      t.string :state
      t.belongs_to :stylist, null: false, foreign_key: true
      t.belongs_to :neighborhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
