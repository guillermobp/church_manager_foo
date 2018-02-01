class CreateChurches < ActiveRecord::Migration[5.1]
  def change
    create_table :churches do |t|
      t.string :name, null: false
      t.string :manager

      t.timestamps
    end
  end
end
