class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :church, foreign_key: true

      t.string :full_name, null: false

      t.references :main_email, foreign_key: { to_table: :emails }
      t.references :main_phone, foreign_key: { to_table: :phones }

      t.timestamps
    end
  end
end
