class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :description
      t.integer :stylist_id
      t.integer :client_id
      t.belongs_to :client, null: false, foreign_key: true
      t.string :stylist_belongs_to

      t.timestamps
    end
  end
end
