class AddBookidTobookAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :bookappointments , Bookid ,integer
  end
end
