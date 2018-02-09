class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.references :contact, foreign_key: true

      t.string :address, null: false
      t.boolean :is_verified, default: false

      t.timestamps
    end
  end
end
