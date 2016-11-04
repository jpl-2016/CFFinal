class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.integer :entity_type_id
      t.integer :prefix_id
      t.integer :address_id
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :suffix
      t.string :occupationtitle
      t.string :employer

      t.timestamps null: false
    end
  end
end
