class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.integer :travel_id
      t.integer :entity_id

      t.timestamps null: false
    end
  end
end
