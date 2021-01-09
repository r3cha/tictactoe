class CreateTictacUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tictac_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tictac, null: false, foreign_key: true

      t.timestamps
    end
  end
end
