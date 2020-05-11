class CreateAuthorsWorksJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :authors, :works do |t|
      t.index :author_id
      t.index :work_id
    end
  end
end
