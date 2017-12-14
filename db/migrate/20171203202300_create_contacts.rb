class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.references :church, index: true, foreign_key: true

      t.timestamps
    end
  end
end
