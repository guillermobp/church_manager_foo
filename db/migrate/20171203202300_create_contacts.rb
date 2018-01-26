class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :full_name, null: false
      t.references :church, foreign_key: true

      t.timestamps
    end
  end
end
