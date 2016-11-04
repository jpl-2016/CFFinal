class CreateFilers < ActiveRecord::Migration
  def change
    create_table :filers do |t|
      t.integer :filer_type_id
      t.integer :address_id
      t.string :firstname
      t.string :mi
      t.string :lastname
      t.string :phone
      t.string :ext
      t.boolean :releasepassword
      t.string :releasepasswordto
      t.string :emailpasswordto
      t.boolean :signature
      t.integer :office_held_id
      t.integer :office_sougth_id

      t.timestamps null: false
    end
  end
end
