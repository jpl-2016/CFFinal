class CreateElectionTypes < ActiveRecord::Migration
  def change
    create_table :election_types do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
