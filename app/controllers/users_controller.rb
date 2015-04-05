class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { render :new_diet_information, notice: 'ユーザー登録が完了しました' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to :root, notice: 'ユーザー情報を更新しました' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'ユーザー情報を削除しました' }
      format.json { head :no_content }
    end
  end

  def new_diet_information
  end

  def diet_information
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'ユーザー情報を更新しました' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end
  
  def new_lifestyle_information
  end

  def lifestyle_information
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'ユーザー情報を更新しました' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end

  def new_custom_information
  end

  def custom_information
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'ユーザー情報を更新しました' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end

  def new_illness_information
  end

  def illness_information
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'ユーザー情報を更新しました' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :password_digest, :email, :gender, :occupation, :purpose, :height, :initial_weight, :target_weight, :current_weight, :loss_rate, :current_bmi, :ticket_count, :target_disease, :birthday, :auto_login_token, :initial_bmi, :pro_edition, :weight_at_age_twenty, :max_weight, :age_of_max_weight, :reason, :how_much_lose_weight, :intensity_of_losing, :sleep_time, :sleep_comment, :alcohole, :how_much_alcohole, :frequency_in_drink, :exercising_custom, :club_activity, :active_of_work, :breakfast_custom, :breakfast_time, :breakfast_staple, :lunch_custom, :lunch_time, :lunch_staple, :dinner_custom, :dinner_time, :dinner_staple, :between_meal, :between_time, :between_food, :midnight_meal, :midnight_time, :midnight_food, :illness, :medicine, :allergy, :stress, :smoking_custom, :smoking_condition, :contact_id, :doctor)
    end
end
