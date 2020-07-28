class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
