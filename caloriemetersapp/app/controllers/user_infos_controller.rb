class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :edit, :update, :destroy]

  # GET /user_infos
  # GET /user_infos.json
  def index
    @gender = UserInfo.get_gender
    @height = UserInfo.get_height
    @weight = UserInfo.get_weight
    @user_info = UserInfo.all
  end

  # GET /user_infos/1
  # GET /user_infos/1.json
  def show
    @gender = UserInfo.get_gender
    @height = UserInfo.get_height
    @weight = UserInfo.get_weight
  end
  
  def view
    @gender = UserInfo.get_gender
    @height = UserInfo.get_height
    @weight = UserInfo.get_weight
    @user_info = UserInfo.find_by(:user_id=>params[:id])
  end

  # GET /user_infos/new
  def new
    @gender = UserInfo.get_gender
    @height = UserInfo.get_height
    @weight = UserInfo.get_weight
    @user_info = UserInfo.new
  end

  # GET /user_infos/1/edit
  def edit
    @gender = UserInfo.get_gender
    @height = UserInfo.get_height
    @weight = UserInfo.get_weight
  end

  # POST /user_infos
  # POST /user_infos.json
  def create
    @user_info = UserInfo.new(user_info_params)
    @user_id = User.last.id
    @user_info.user_id =  @user_id 
    @gender = UserInfo.get_gender
    @height = UserInfo.get_height
    @weight = UserInfo.get_weight
    if @user_info.save
      @user_infos = UserInfo.all
    else
      render 'create_error'
    end

  end

  # PATCH/PUT /user_infos/1
  # PATCH/PUT /user_infos/1.json
  def update
      if @user_info.update(user_info_params)
        user_id = @user_info.user_id
         @user_infos = UserInfo.find(user_id)
         @gender = UserInfo.get_gender
         @height = UserInfo.get_height
         @weight = UserInfo.get_weight

         render'edit'

      else
        render 'update_error'
      end
    end


  # DELETE /user_infos/1
  # DELETE /user_infos/1.json
  def destroy
    @user_info.destroy
    @user_infos = UserInfo.all
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_info_params
      params.require(:user_info).permit(:user_id, :first_name, :last_name, :gender, :height, :dob, :weight)
    end
end
