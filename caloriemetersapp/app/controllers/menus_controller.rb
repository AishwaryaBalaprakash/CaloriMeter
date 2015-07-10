class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
    @restaurants =  @menu.restaurant
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)
    @restaurants =  @menu.restaurant
      if @menu.save
        @menus = Menu.all
      else
        render 'create_error'
      end
    end


  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
   @restaurants =  @menu.restaurant
      if @menu.update(menu_params)
        @menus = Menu.all
      else
        render 'update_error'
      end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    restaurant_id = @menu.restaurant_id
    @menus = Menu.where(:restaurant_id=>restaurant_id)
    #puts @menu.size
    #@restaurants = @menu.restaurant
    render 'restaurants/search_by_restaurant'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:restaurant_id, :serving_id, :menu_item, :calories)
    end
end
