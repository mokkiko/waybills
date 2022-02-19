class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :driver_name
      t.string :driver_car
      t.string :driver_license
      t.integer :driver_phone
      t.string :driver_reg_number
      t.string :driver_category
      t.string :driver_organization
      t.string :driver_experience
      t.string :driver_submission

      t.timestamps
    end
  end
end
