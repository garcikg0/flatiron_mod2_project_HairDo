class AddEmailToClient < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :email, :string
  end
end
