class CreateInvestmentPurchases < ActiveRecord::Migration
  def change
    create_table :investment_purchases do |t|
      t.integer :campaign_finance_info_id
      t.integer :entity_id
      t.date :date
      t.float :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
