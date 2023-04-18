class VeiculosController < ApplicationController
  before_action :set_veiculo, only: %i[ show edit update destroy ]
  before_action :authenticate_usuario!

  # GET /veiculos or /veiculos.json
  def index
    @veiculos = Veiculo.all
  end

  # GET /veiculos/1 or /veiculos/1.json
  def show
  end

  # GET /veiculos/new
  def new
    @veiculo = Veiculo.new
  end

  # GET /veiculos/1/edit
  def edit
  end

  # POST /veiculos or /veiculos.json
  def create
    @veiculo = Veiculo.new(veiculo_params)

    respond_to do |format|
      if @veiculo.save
        format.html { redirect_to veiculo_url(@veiculo), notice: "Veiculo was successfully created." }
        format.json { render :show, status: :created, location: @veiculo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veiculos/1 or /veiculos/1.json
  def update
    respond_to do |format|
      if @veiculo.update(veiculo_params)
        format.html { redirect_to veiculo_url(@veiculo), notice: "Veiculo was successfully updated." }
        format.json { render :show, status: :ok, location: @veiculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1 or /veiculos/1.json
  def destroy
    begin
      @veiculo.destroy
      flash[:notice] = "Veiculo removed successfully"
    rescue ActiveRecord::InvalidForeignKey
      flash[:alert] = "Veiculo can't be removed because it has rentals!"
    end
    redirect_to veiculos_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_veiculo
    @veiculo = Veiculo.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def veiculo_params
    params.require(:veiculo).permit(:marca, :modelo, :placa, :chassi, :cor)
  end
end
