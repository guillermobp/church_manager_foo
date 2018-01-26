class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.references :region, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
