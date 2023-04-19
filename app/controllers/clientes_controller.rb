require "ransack"

class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[ show edit update destroy ]
  before_action :authenticate_usuario!

  # CRUD -> create, read, update, delete
  # GET /clientes or /clientes.json
  def index
    @c = Cliente.ransack(params[:q])
    @clientes = @c.result(distinct: true)
  end

  # GET /clientes/1 or /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes or /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to cliente_url(@cliente), notice: "Cliente was successfully created." }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1 or /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to clientes_url, notice: "Cliente was successfully updated." }
        format.json { render :index, status: :ok, location: @cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1 or /clientes/1.json
  def destroy
    begin
      @cliente.destroy
      flash[:notice] = "Cliente removed successfully!"
    rescue ActiveRecord::InvalidForeignKey
      flash[:alert] = "Cliente can't be removed because it has rentals!"
    end
    redirect_to clientes_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cliente_params
    params.require(:cliente).permit(:nome, :cpf, :cnh, :profile_url)
  end
end
