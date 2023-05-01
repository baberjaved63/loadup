class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :animal_name
      t.integer :animal_type
      t.float   :hours, min: 2, max: 8
      t.date    :service_date
      t.decimal :charge

      t.timestamps
    end
  end
end
