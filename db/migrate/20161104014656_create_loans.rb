class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :campaign_finance_info_id
      t.integer :entity_id
      t.date :date
      t.boolean :isfinancialinstitution
      t.boolean :isoutofstatepac
      t.string :pacid
      t.float :amount
      t.float :interestrate
      t.date :maturitydate
      t.text :collateraldescription
      t.boolean :ispersonalfunddeposit

      t.timestamps null: false
    end
  end
end
