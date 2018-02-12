class CreatePriesthoods < ActiveRecord::Migration[5.1]
  def change
    create_table :priesthoods do |t|
      t.references :priest, foreign_key: { to_table: :people }
      t.references :church, foreign_key: true
      t.datetime :period_begin
      t.datetime :period_end

      t.timestamps
    end
  end
end
