class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :email, limit: 50, null: false
      t.string :first_name, limit: 50, null: false
      t.string :last_name, limit: 50, null: false

      t.timestamps
    end

    add_index :authors, :email, unique: true
  end
end
