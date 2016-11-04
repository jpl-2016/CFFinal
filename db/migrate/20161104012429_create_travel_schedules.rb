class CreateTravelSchedules < ActiveRecord::Migration
  def change
    create_table :travel_schedules do |t|
      t.integer :expenditure_id
      t.integer :cohpayment_id
      t.string :contribution

      t.timestamps null: false
    end
  end
end
