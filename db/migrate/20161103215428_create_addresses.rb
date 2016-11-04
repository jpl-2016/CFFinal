class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :state_id
      t.string :address
      t.string :suiteapt
      t.string :city
      t.string :zipcode
      t.boolean :addresschange

      t.timestamps null: false
    end
  end
end
