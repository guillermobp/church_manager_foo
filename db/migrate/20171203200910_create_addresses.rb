class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.integer :street_number
      t.string :reference
      t.string :zip_code
      t.decimal :latitude, precision: 10, scale: 4
      t.decimal :longitude, precision: 10, scale: 4
      t.references :city, index: true, foreign_key: true
      t.references :church, index: true, foreign_key: true

      t.timestamps
    end
  end
end
