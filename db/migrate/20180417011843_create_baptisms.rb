class CreateBaptisms < ActiveRecord::Migration[5.1]
  def change
    create_table :baptisms do |t|
      t.references :priest,     foreign_key: true
      t.references :baptised,   foreign_key: { to_table: :people }
      t.references :mother,     foreign_key: { to_table: :people }
      t.references :father,     foreign_key: { to_table: :people }
      t.references :godfather,  foreign_key: { to_table: :people }
      t.references :godmother,  foreign_key: { to_table: :people }
      t.date :date

      t.timestamps
    end
  end
end
