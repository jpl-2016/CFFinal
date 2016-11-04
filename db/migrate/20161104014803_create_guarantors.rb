class CreateGuarantors < ActiveRecord::Migration
  def change
    create_table :guarantors do |t|
      t.integer :loan_id
      t.integer :entity_id
      t.float :amount

      t.timestamps null: false
    end
  end
end
