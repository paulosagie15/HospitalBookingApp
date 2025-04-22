class BookappiontmentsController < ApplicationController
  before_action :set_bookappiontment, only: %i[ show edit update destroy ]

  # GET /bookappiontments or /bookappiontments.json
  def index
    @bookappiontments = Bookappiontment.all
    
  end

  # GET /bookappiontments/1 or /bookappiontments/1.json
  def show
  end

  # GET /bookappiontments/new
  def new
    @bookappiontment = Bookappiontment.new
  end

  # GET /bookappiontments/1/edit
  def edit
  end

  # POST /bookappiontments or /bookappiontments.json
  def create
    @bookappiontment = Bookappiontment.new(bookappiontment_params)
    @bookappiontment.user=current_user

    respond_to do |format|
      if @bookappiontment.save
        format.html { redirect_to @bookappiontment, notice: "Bookappiontment was successfully created." }
        format.json { render :show, status: :created, location: @bookappiontment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookappiontment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookappiontments/1 or /bookappiontments/1.json
  def update
    respond_to do |format|
      if @bookappiontment.update(bookappiontment_params)
        format.html { redirect_to @bookappiontment, notice: "Bookappiontment was successfully updated." }
        format.json { render :show, status: :ok, location: @bookappiontment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookappiontment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookappiontments/1 or /bookappiontments/1.json
  def destroy
    @bookappiontment.destroy!

    respond_to do |format|
      format.html { redirect_to bookappiontments_path, status: :see_other, notice: "Bookappiontment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookappiontment
      @bookappiontment = Bookappiontment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookappiontment_params
      params.require(:bookappiontment).permit(:Bookid, :FirstName, :LastName, :telephone, :Email, :start_time, :end_time, :user_id)
    end


end
