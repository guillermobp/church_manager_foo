class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string     :type
      t.integer    :national_identification_number
      t.string     :first_name, null: false
      t.string     :last_name, null: false
      t.string     :display_name
      t.string     :avatar_url
      t.datetime   :birth_date
      t.references :birth_commune, foreign_key: { to_table: :communes }

      t.timestamps
    end
  end
end
