class CreateTictacs < ActiveRecord::Migration[6.1]
  def change
    create_table :tictacs do |t|
      t.string :circles, array: true
      t.string :crosses, array: true
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
