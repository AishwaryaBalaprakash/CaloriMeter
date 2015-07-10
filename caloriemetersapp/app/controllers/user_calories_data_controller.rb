class UserCaloriesDataController < ApplicationController
  before_action :set_user_calories_datum, only: [:show, :edit, :update, :destroy]

  # GET /user_calories_data
  # GET /user_calories_data.json
  def index
     @user_calories_data = UserCaloriesDatum.all
     @user_calories_datum = UserCaloriesDatum.new
  end

  # GET /user_calories_data/1
  # GET /user_calories_data/1.json
  def show
  end
  
  def track
   @user_calories_data = UserCaloriesDatum.where(:user_info_id=>params[:id])
   @user_calories_datum = UserCaloriesDatum.new
  end

  # GET /user_calories_data/new
  def new
    @user_calories_datum = UserCaloriesDatum.new
  end

  # GET /user_calories_data/1/edit
  def edit
  end

  # POST /user_calories_data
  # POST /user_calories_data.json
  def create 
    @user_calories_datum = UserCaloriesDatum.new(user_calories_datum_params) 
    user_id = @user_calories_datum.user_info_id
    @user_calories_data = UserCaloriesDatum.where(:user_info_id=>user_id)
      if @user_calories_datum.save         
      else       
       render 'create_error'     
    end
  end

  # PATCH/PUT /user_calories_data/1
  # PATCH/PUT /user_calories_data/1.json
  def update   
      if @user_calories_datum.update(user_calories_datum_params)
      user_id = @user_calories_datum.user_info_id
      @user_calories_data = UserCaloriesDatum.where(:user_info_id=>user_id)
      else
        render 'update_error'     
      end
  end

  # DELETE /user_calories_data/1
  # DELETE /user_calories_data/1.json
  def destroy
    @user_calories_datum.destroy
    user_id = @user_calories_datum.user_info_id
    @user_calories_data = UserCaloriesDatum.where(:user_info_id=>user_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_calories_datum
      @user_calories_datum = UserCaloriesDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_calories_datum_params
      params.require(:user_calories_datum).permit(:user_info_id, :date_tracked, :target, :consumed_calories)
    end
end
