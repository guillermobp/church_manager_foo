class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.integer :country_code, null: false
      t.integer :number, null: false
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
