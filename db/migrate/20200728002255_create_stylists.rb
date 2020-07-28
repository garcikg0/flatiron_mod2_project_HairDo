class CreateStylists < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|
      t.string :name
      t.string :bio
      t.integer :years_of_practice
      t.string :licenses
      t.integer :city_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
