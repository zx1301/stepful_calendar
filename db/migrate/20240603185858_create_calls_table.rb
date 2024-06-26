class CreateCallsTable < ActiveRecord::Migration[7.0]
  def up
    create_table :calls do |t|
      t.datetime :start_time
      t.references :coach, foreign_key: { to_table: :users }
      t.references :student, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
