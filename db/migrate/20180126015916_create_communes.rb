class CreateCommunes < ActiveRecord::Migration[5.1]
  def change
    create_table :communes do |t|
      t.references :province, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
