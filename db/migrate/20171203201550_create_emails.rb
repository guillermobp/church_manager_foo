class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :address
      t.boolean :is_verified
      t.references :contact, index: true, foreign_key: true

      t.timestamps
    end
  end
end
