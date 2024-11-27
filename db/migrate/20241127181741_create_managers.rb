class CreateManagers < ActiveRecord::Migration[8.0]
  def change
    create_table :managers do |t|
      t.string :nome
      t.date :nascimento
      t.references :Store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
