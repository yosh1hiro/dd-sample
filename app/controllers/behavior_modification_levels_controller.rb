class BehaviorModificationLevelsController < ApplicationController
  before_action :set_behavior_modification_level, only: [:show, :edit, :update, :destroy]

  # GET /behavior_modification_levels
  # GET /behavior_modification_levels.json
  def index
    @behavior_modification_levels = BehaviorModificationLevel.all
  end

  # GET /behavior_modification_levels/1
  # GET /behavior_modification_levels/1.json
  def show
  end

  # GET /behavior_modification_levels/new
  def new
    @behavior_modification_level = BehaviorModificationLevel.new
  end

  # GET /behavior_modification_levels/1/edit
  def edit
  end

  # POST /behavior_modification_levels
  # POST /behavior_modification_levels.json
  def create
    @behavior_modification_level = BehaviorModificationLevel.new(behavior_modification_level_params)

    respond_to do |format|
      if @behavior_modification_level.save
        format.html { redirect_to @behavior_modification_level, notice: 'Behavior modification level was successfully created.' }
        format.json { render :show, status: :created, location: @behavior_modification_level }
      else
        format.html { render :new }
        format.json { render json: @behavior_modification_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /behavior_modification_levels/1
  # PATCH/PUT /behavior_modification_levels/1.json
  def update
    respond_to do |format|
      if @behavior_modification_level.update(behavior_modification_level_params)
        format.html { redirect_to @behavior_modification_level, notice: 'Behavior modification level was successfully updated.' }
        format.json { render :show, status: :ok, location: @behavior_modification_level }
      else
        format.html { render :edit }
        format.json { render json: @behavior_modification_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /behavior_modification_levels/1
  # DELETE /behavior_modification_levels/1.json
  def destroy
    @behavior_modification_level.destroy
    respond_to do |format|
      format.html { redirect_to behavior_modification_levels_url, notice: 'Behavior modification level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_behavior_modification_level
      @behavior_modification_level = BehaviorModificationLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def behavior_modification_level_params
      params.require(:behavior_modification_level).permit(:user_id, :green, :low_gi, :oil, :balance, :order, :light, :drink, :alcohol, :morning, :dinner, :snack, :mental, :midnight, :suger, :pose, :life, :muscle, :jogging, :sports)
    end
end
