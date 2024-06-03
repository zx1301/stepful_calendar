class CreateRelationshipsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :user_relationships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: { to_table: :users }
      
      t.timestamps
    end
  end
end
