class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :type, null: false
      t.string :isbn, limit: 50, null: false
      t.string :title, limit: 50, null: false
      t.string :description, limit: 500
      t.date :published_at

      t.timestamps
    end

    add_index :works, :isbn, unique: true
  end
end
