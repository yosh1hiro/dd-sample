class SkypesController < ApplicationController
  before_action :set_skype, only: [:show, :edit, :update, :destroy]

  # GET /skypes
  # GET /skypes.json
  def index
    @skypes = Skype.all
  end

  # GET /skypes/1
  # GET /skypes/1.json
  def show
  end

  # GET /skypes/new
  def new
    @skype = Skype.new
  end

  # GET /skypes/1/edit
  def edit
  end

  # POST /skypes
  # POST /skypes.json
  def create
    @skype = Skype.new(skype_params)

    respond_to do |format|
      if @skype.save
        format.html { redirect_to @skype, notice: 'Skype was successfully created.' }
        format.json { render :show, status: :created, location: @skype }
      else
        format.html { render :new }
        format.json { render json: @skype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skypes/1
  # PATCH/PUT /skypes/1.json
  def update
    respond_to do |format|
      if @skype.update(skype_params)
        format.html { redirect_to @skype, notice: 'Skype was successfully updated.' }
        format.json { render :show, status: :ok, location: @skype }
      else
        format.html { render :edit }
        format.json { render json: @skype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skypes/1
  # DELETE /skypes/1.json
  def destroy
    @skype.destroy
    respond_to do |format|
      format.html { redirect_to skypes_url, notice: 'Skype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skype
      @skype = Skype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skype_params
      params.require(:skype).permit(:user_id, :appointment_date, :completed, :comment)
    end
end
