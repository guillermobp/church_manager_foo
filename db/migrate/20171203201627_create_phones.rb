class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.integer :country_code
      t.integer :number
      t.references :contact, index: true, foreign_key: true

      t.timestamps
    end
  end
end
