class CreateNeighborhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
<<<<<<< HEAD:db/migrate/20200728181955_create_neighborhoods.rb
      t.belongs_to :city, null: false, foreign_key: true

=======
      t.integer :city_id
>>>>>>> b05c39971c6a1ec7b1a3e1952da17e49b52fa40e:db/migrate/20200728195143_create_neighborhoods.rb
      t.timestamps
    end
  end
end
