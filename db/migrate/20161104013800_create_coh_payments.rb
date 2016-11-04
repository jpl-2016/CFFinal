class CreateCohPayments < ActiveRecord::Migration
  def change
    create_table :coh_payments do |t|
      t.integer :campaign_finance_info_id
      t.integer :entity_id
      t.integer :expend_category_id
      t.date :date
      t.float :amount
      t.text :description
      t.boolean :istraveloutsideoftx
      t.boolean :isaustintxlivingexpense
      t.boolean :isbenefitcoh

      t.timestamps null: false
    end
  end
end
