class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :campaign_finance_info_id
      t.integer :entity_id
      t.date :date
      t.float :amount
      t.text :purpose
      t.boolean :isreturnedtofiler

      t.timestamps null: false
    end
  end
end
