class ServingsController < ApplicationController
  before_action :set_serving, only: [:show, :edit, :update, :destroy]

  # GET /servings
  # GET /servings.json
  def index
    @servings = Serving.all
  end

  # GET /servings/1
  # GET /servings/1.json
  def show
  end

  # GET /servings/new
  def new
    @serving = Serving.new
  end

  # GET /servings/1/edit
  def edit
  end

  # POST /servings
  # POST /servings.json

=begin
def create
    @serving = Serving.new(serving_params)

     if @serving.save
       @servings = Serving.all
      else
        render 'create_error'
      end
    end
   # PATCH/PUT /servings/1
  # PATCH/PUT /servings/1.json
  def update
    respond_to do |format|
      if @serving.update(serving_params)
        @servings = Serving.all
      else
        render 'update_error'
      end
      end
    end
  # DELETE /servings/1
  # DELETE /servings/1.json
  def destroy
    @serving.destroy
    respond_to do |format|
      format.html { redirect_to servings_url }
      format.json { head :no_content }
    end
  end
=end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serving
      @serving = Serving.find(params[:id])
    end
=begin
    # Never trust parameters from the scary internet, only allow the white list through.
    def serving_params
      params.require(:serving).permit(:serving_size)
    end
=end
end
