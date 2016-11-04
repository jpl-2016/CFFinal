class CreateCommitteeNotices < ActiveRecord::Migration
  def change
    create_table :committee_notices do |t|
      t.integer :committee_id
      t.integer :campaign_finance_info_id

      t.timestamps null: false
    end
  end
end
