class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :name
      t.integer :user_id
      t.integer :category_id
      t.text :explanation

      t.timestamps
    end
  end
end
