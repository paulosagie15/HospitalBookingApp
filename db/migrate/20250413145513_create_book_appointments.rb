class CreateBookAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :book_appointments do |t|
      t.string :bookid
      t.string :FirstName
      t.string :LastName
      t.integer :telephon
      t.string :Email
      t.string :password
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
