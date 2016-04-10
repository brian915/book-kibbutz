class CreateBooks < ActiveRecord::Migration
  def change

    drop_table :books

    create_table :books do |t|
      t.string :title
      t.decimal :isbn
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
