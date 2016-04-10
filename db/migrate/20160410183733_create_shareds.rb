class CreateShareds < ActiveRecord::Migration
  def change
    create_table :shareds do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.date :sent

      t.timestamps null: false
    end
  end
end
