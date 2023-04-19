class UsuariosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :authorize_root!

  def index
    @usuarios = Usuario.all
  end

  # def show
  # end

  # def edit
  # end

  # def update
  #   respond_to do |format|
  #     if @usuario.update(usuario_params)
  #       format.html { redirect_to usuarios_url, notice: "usuario was successfully updated." }
  #       format.json { render :index, status: :ok, location: @usuario }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @usuario.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  private

  def authorize_root!
    unless current_usuario.root?
      redirect_to root_path, alert: "Você não tem permissão para acessar essa página."
    end
  end
end
