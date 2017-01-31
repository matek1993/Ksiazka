class AdresController < ApplicationController
  before_action :set_adre, only: [:show, :edit, :update, :destroy]

  # GET /adres
  # GET /adres.json
  def index
    @adres = Adre.all
  end

  # GET /adres/1
  # GET /adres/1.json
  def show
  end

  # GET /adres/new
  def new
    @adre = Adre.new
  end

  # GET /adres/1/edit
  def edit
  end

  # POST /adres
  # POST /adres.json
  def create
    @adre = Adre.new(adre_params)

    respond_to do |format|
      if @adre.save
        format.html { redirect_to @adre, notice: 'Adre was successfully created.' }
        format.json { render :show, status: :created, location: @adre }
      else
        format.html { render :new }
        format.json { render json: @adre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adres/1
  # PATCH/PUT /adres/1.json
  def update
    respond_to do |format|
      if @adre.update(adre_params)
        format.html { redirect_to @adre, notice: 'Adre was successfully updated.' }
        format.json { render :show, status: :ok, location: @adre }
      else
        format.html { render :edit }
        format.json { render json: @adre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adres/1
  # DELETE /adres/1.json
  def destroy
    @adre.destroy
    respond_to do |format|
      format.html { redirect_to adres_url, notice: 'Adre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adre
      @adre = Adre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adre_params
      params.require(:adre).permit(:ID, :miejscowosc1, :miejscowosc2)
    end
end
