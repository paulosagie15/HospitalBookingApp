class AddbookidTobookappiontments < ActiveRecord::Migration[7.1]
  def change
    add_column :bookappiontments,
    :bookid , integer
  end
end
