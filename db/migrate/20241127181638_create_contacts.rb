class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :tipo
      t.string :valor
      t.references :Store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
