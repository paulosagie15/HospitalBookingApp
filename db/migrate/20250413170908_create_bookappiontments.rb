class CreateBookappiontments < ActiveRecord::Migration[7.1]
  def change
    create_table :bookappiontments do |t|
      t.integer :Bookid
      t.string :FirstName
      t.string :LastName
      t.integer :telephone
      t.string :Email
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
