class CreateNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.integer :zipcodes
      t.integer :city_id

      t.timestamps
    end
  end
end
