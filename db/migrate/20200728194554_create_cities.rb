class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
<<<<<<< HEAD:db/migrate/20200728182418_create_cities.rb

=======
>>>>>>> b05c39971c6a1ec7b1a3e1952da17e49b52fa40e:db/migrate/20200728194554_create_cities.rb
      t.timestamps
    end
  end
end
