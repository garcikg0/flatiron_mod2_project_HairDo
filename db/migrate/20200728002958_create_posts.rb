class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :stylist_id
      t.belongs_to :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
