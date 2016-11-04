class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :campaign_finance_info_id
      t.integer :contribution_type_id
      t.integer :entity_id
      t.date :date
      t.float :amount
      t.text :description
      t.boolean :isoutofstatepac
      t.string :pacid
      t.boolean :istraveloutsideoftx

      t.timestamps null: false
    end
  end
end
