class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.integer :campaign_finance_info_id
      t.integer :entity_id
      t.integer :expend_type_id
      t.integer :expend_category_id
      t.integer :payment_method_id
      t.date :date
      t.float :amount
      t.text :description
      t.boolean :istraveloutsideoftx
      t.boolean :isaustintxlivingexpense
      t.boolean :isbenefitcoh
      t.boolean :isreimbursementintended

      t.timestamps null: false
    end
  end
end
