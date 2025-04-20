json.extract! book_appointment, :id, :bookid, :FirstName, :LastName, :telephon, :Email, :password, :start_time, :end_time, :user_id, :created_at, :updated_at
json.url book_appointment_url(book_appointment, format: :json)
