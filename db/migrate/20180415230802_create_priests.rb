class CreatePriests < ActiveRecord::Migration[5.1]
  def change
    create_table :priests do |t|
      t.references :church, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :display_name
      t.boolean :active

      t.timestamps
    end
  end
end
