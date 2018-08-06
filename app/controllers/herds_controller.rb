class HerdsController < ApplicationController
  before_action :set_herd, only: [:show, :edit, :update, :destroy]
  
  
  # GET /herds
  # GET /herds.json
  def index
    @herds = current_user.herds
  end

  # GET /herds/1
  # GET /herds/1.json
  def show
  end
  
  def dashboard_select
     @herd = current_user.herds.build
  end

  # GET /herds/new
  def new
    @herd = current_user.herds.build
  end

  # GET /herds/1/edit
  def edit
  end

  # POST /herds
  # POST /herds.json
  def create
    @herd = current_user.herds.new(herd_params)

    respond_to do |format|
      if @herd.save
        format.html { redirect_to @herd, notice: 'Herd was successfully created.' }
        format.json { render :show, status: :created, location: @herd }
      else
        format.html { render :new }
        format.json { render json: @herd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /herds/1
  # PATCH/PUT /herds/1.json
  def update
    respond_to do |format|
      if @herd.update(herd_params)
        format.html { redirect_to @herd, notice: 'Herd was successfully updated.' }
        format.json { render :show, status: :ok, location: @herd }
      else
        format.html { render :edit }
        format.json { render json: @herd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /herds/1
  # DELETE /herds/1.json
  def destroy
    @herd.destroy
    respond_to do |format|
      format.html { redirect_to herds_url, notice: 'Herd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herd
      @herd = Herd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def herd_params
      params.require(:herd).permit(:name, :desc, :animals, :pasture_id)
    end
end
