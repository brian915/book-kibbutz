class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :isbn

      t.timestamps null: false
    end
  end
end