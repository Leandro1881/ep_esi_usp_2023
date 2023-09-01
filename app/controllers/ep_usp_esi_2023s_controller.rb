class EpUspEsi2023sController < ApplicationController
  before_action :set_ep_usp_esi_2023, only: %i[ show edit update destroy ]

  # GET /ep_usp_esi_2023s or /ep_usp_esi_2023s.json
  def index
    @ep_usp_esi_2023s = EpUspEsi2023.all
  end

  # GET /ep_usp_esi_2023s/1 or /ep_usp_esi_2023s/1.json
  def show
  end

  # GET /ep_usp_esi_2023s/new
  def new
    @ep_usp_esi_2023 = EpUspEsi2023.new
  end

  # GET /ep_usp_esi_2023s/1/edit
  def edit
  end

  # POST /ep_usp_esi_2023s or /ep_usp_esi_2023s.json
  def create
    @ep_usp_esi_2023 = EpUspEsi2023.new(ep_usp_esi_2023_params)

    respond_to do |format|
      if @ep_usp_esi_2023.save
        format.html { redirect_to ep_usp_esi_2023_url(@ep_usp_esi_2023), notice: "Ep usp esi 2023 was successfully created." }
        format.json { render :show, status: :created, location: @ep_usp_esi_2023 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ep_usp_esi_2023.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ep_usp_esi_2023s/1 or /ep_usp_esi_2023s/1.json
  def update
    respond_to do |format|
      if @ep_usp_esi_2023.update(ep_usp_esi_2023_params)
        format.html { redirect_to ep_usp_esi_2023_url(@ep_usp_esi_2023), notice: "Ep usp esi 2023 was successfully updated." }
        format.json { render :show, status: :ok, location: @ep_usp_esi_2023 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ep_usp_esi_2023.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ep_usp_esi_2023s/1 or /ep_usp_esi_2023s/1.json
  def destroy
    @ep_usp_esi_2023.destroy

    respond_to do |format|
      format.html { redirect_to ep_usp_esi_2023s_url, notice: "Ep usp esi 2023 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ep_usp_esi_2023
      @ep_usp_esi_2023 = EpUspEsi2023.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ep_usp_esi_2023_params
      params.require(:ep_usp_esi_2023).permit(:Post, :titulo, :descricao)
    end
end
