class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :address, null: false
      t.boolean :is_verified, default: false
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
