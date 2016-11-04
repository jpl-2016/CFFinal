class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :campaign_finance_info_id
      t.integer :travel_schedule_id
      t.date :travelbegin
      t.date :travelend
      t.string :departureloc
      t.string :destinationloc
      t.string :transportation
      t.string :purpose

      t.timestamps null: false
    end
  end
end
