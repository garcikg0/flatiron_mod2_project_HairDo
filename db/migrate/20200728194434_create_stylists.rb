class CreateStylists < ActiveRecord::Migration[6.0]
  def change
    create_table :stylists do |t|
      t.string :name
<<<<<<< HEAD:db/migrate/20200728184509_create_stylists.rb
      t.string :bio
      t.integer :years_of_experience
=======
      t.integer :age
      t.integer :years_of_practice
      t.string :bio
>>>>>>> b05c39971c6a1ec7b1a3e1952da17e49b52fa40e:db/migrate/20200728194434_create_stylists.rb
      t.string :licenses
      t.integer :city_id
      t.integer :neighborhood_id
      t.timestamps

    end
  end
end
