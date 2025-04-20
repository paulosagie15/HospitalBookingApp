class BookAppointmentsController < ApplicationController
  before_action :set_book_appointment, only: %i[ show edit update destroy ]

  # GET /book_appointments or /book_appointments.json
  def index
    @book_appointments = BookAppointment.all
  end

  # GET /book_appointments/1 or /book_appointments/1.json
  def show
  end

  # GET /book_appointments/new
  def new
    @book_appointment = BookAppointment.new
  end

  # GET /book_appointments/1/edit
  def edit
  end

  # POST /book_appointments or /book_appointments.json
  def create
    @book_appointment = BookAppointment.new(book_appointment_params)
    @book_appointment.user=current_user

    respond_to do |format|
      if @book_appointment.save
        format.html { redirect_to @book_appointment, notice: "Book appointment was successfully created." }
        format.json { render :show, status: :created, location: @book_appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_appointments/1 or /book_appointments/1.json
  def update
    respond_to do |format|
      if @book_appointment.update(book_appointment_params)
        format.html { redirect_to @book_appointment, notice: "Book appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @book_appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_appointments/1 or /book_appointments/1.json
  def destroy
    @book_appointment.destroy!

    respond_to do |format|
      format.html { redirect_to book_appointments_path, status: :see_other, notice: "Book appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_appointment
      @book_appointment = BookAppointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_appointment_params
      params.require(:book_appointment).permit(:bookid, :FirstName, :LastName, :telephon, :Email, :password, :start_time, :end_time, :user_id)
    end
end
