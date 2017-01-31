class TelefonsController < ApplicationController
  before_action :set_telefon, only: [:show, :edit, :update, :destroy]

  # GET /telefons
  # GET /telefons.json
  def index
    @telefons = Telefon.all
  end

  # GET /telefons/1
  # GET /telefons/1.json
  def show
  end

  # GET /telefons/new
  def new
    @telefon = Telefon.new
  end

  # GET /telefons/1/edit
  def edit
  end

  # POST /telefons
  # POST /telefons.json
  def create
    @telefon = Telefon.new(telefon_params)

    respond_to do |format|
      if @telefon.save
        format.html { redirect_to @telefon, notice: 'Telefon was successfully created.' }
        format.json { render :show, status: :created, location: @telefon }
      else
        format.html { render :new }
        format.json { render json: @telefon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telefons/1
  # PATCH/PUT /telefons/1.json
  def update
    respond_to do |format|
      if @telefon.update(telefon_params)
        format.html { redirect_to @telefon, notice: 'Telefon was successfully updated.' }
        format.json { render :show, status: :ok, location: @telefon }
      else
        format.html { render :edit }
        format.json { render json: @telefon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefons/1
  # DELETE /telefons/1.json
  def destroy
    @telefon.destroy
    respond_to do |format|
      format.html { redirect_to telefons_url, notice: 'Telefon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telefon
      @telefon = Telefon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telefon_params
      params.require(:telefon).permit(:ID, :numer)
    end
end
