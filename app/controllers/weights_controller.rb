class WeightsController < ApplicationController


  def index
    @weight = current_user.weight.all
  end

  def create
    @weight = current_user.weight.build(weight_params)
    if @weight.save
      respond_to do |format|
        format.html { redirect_to user_path, notice: '体重を記録しました。' }
      end
    else
      redirect_to user_path
    end
  end

  def destroy
    @weight.destroy
    redirect_to root_path
  end

  def edit

  end

  def update
    if @weight.update(weight_params)
      respond_to do |format|
       format.html { redirect_to user_path, notice: '体重情報を更新しました。' } 
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def weight_params
      params.require(:weight).permit(:user_id, :weight, :date)
    end
end
