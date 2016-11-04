class CreateCommitteeTypes < ActiveRecord::Migration
  def change
    create_table :committee_types do |t|
      t.string :committeetype

      t.timestamps null: false
    end
  end
end
