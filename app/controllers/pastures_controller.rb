class PasturesController < ApplicationController
  before_action :set_pasture, only: [:show, :edit, :update, :destroy]

  # GET /pastures
  # GET /pastures.json
  def index
    @pastures = current_user.pastures
  end

  # GET /pastures/1
  # GET /pastures/1.json
  def show
  end

  # GET /pastures/new
  def new
    @pasture = current_user.pastures.build
  end

  # GET /pastures/1/edit
  def edit
  end

  # POST /pastures
  # POST /pastures.json
  def create
    @pasture = current_user.pastures.new(pasture_params)

    respond_to do |format|
      if @pasture.save
        format.html { redirect_to @pasture, notice: 'Pasture was successfully created.' }
        format.json { render :show, status: :created, location: @pasture }
      else
        format.html { render :new }
        format.json { render json: @pasture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pastures/1
  # PATCH/PUT /pastures/1.json
  def update
    respond_to do |format|
      if @pasture.update(pasture_params)
        format.html { redirect_to @pasture, notice: 'Pasture was successfully updated.' }
        format.json { render :show, status: :ok, location: @pasture }
      else
        format.html { render :edit }
        format.json { render json: @pasture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pastures/1
  # DELETE /pastures/1.json
  def destroy
    @pasture.destroy
    respond_to do |format|
      format.html { redirect_to pastures_url, notice: 'Pasture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pasture
      @pasture = Pasture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pasture_params
      params.require(:pasture).permit(:date_grazed, :available_forage, :size, :herd_id)
    end
end
