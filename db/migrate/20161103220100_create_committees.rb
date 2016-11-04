class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.integer :treasurer_id
      t.integer :committee_type_id
      t.integer :address_id
      t.string :committeename

      t.timestamps null: false
    end
  end
end
