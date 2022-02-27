class CreateWaybills < ActiveRecord::Migration[6.1]
  def change
    create_table :waybills do |t|
      t.integer :driver_id
      t.date :waybill_date
      t.integer :mileage_at_morning
      t.integer :mileage_at_evening
      t.integer :mileage_daily

      t.timestamps
    end
  end
end
