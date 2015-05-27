class MealRecordsController < ApplicationController
  before_action :set_meal_record, only: [:show, :edit, :update, :destroy]

  # GET /meal_records
  # GET /meal_records.json
  def index
    @meal_records = current_user.meal_records.all
  end

  # GET /meal_records/1
  # GET /meal_records/1.json
  def show
  end

  # GET /meal_records/new
  def new
    @meal_record = Form::MealRecord.new
    @food = Food.all
  end

  # GET /meal_records/1/edit
  def edit
    @meal_record = Form::MealRecord.find(params[:id])
  end

  # POST /meal_records
  # POST /meal_records.json
  def create
    @meal_record = Form::MealRecord.new(meal_record_params)

    respond_to do |format|
      if @meal_record.save
        format.html { redirect_to @meal_record, notice: 'Meal record was successfully created.' }
        format.json { render :show, status: :created, location: @meal_record }
      else
        format.html { render :new }
        format.json { render json: @meal_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_records/1
  # PATCH/PUT /meal_records/1.json
  def update
    respond_to do |format|
      if @meal_record.update(meal_record_params)
        format.html { redirect_to @meal_record, notice: 'Meal record was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_record }
      else
        format.html { render :edit }
        format.json { render json: @meal_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_records/1
  # DELETE /meal_records/1.json
  def destroy
    @meal_record.destroy
    respond_to do |format|
      format.html { redirect_to meal_records_url, notice: 'Meal record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_record
      @meal_record = MealRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_record_params
      params.require(:meal_record).permit(:user_id, :meal_code, :date, food_recordings_attributes: [:id, :meal_record_id, :food_id])
    end
end
