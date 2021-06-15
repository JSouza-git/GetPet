class UsuarioCargosController < ApplicationController
  before_action :set_usuario_cargo, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /usuario_cargos or /usuario_cargos.json
  def index
    @usuario_cargos = UsuarioCargo.all
  end

  # GET /usuario_cargos/1 or /usuario_cargos/1.json
  def show
  end

  # GET /usuario_cargos/new
  def new
    @usuario_cargo = UsuarioCargo.new
  end

  # GET /usuario_cargos/1/edit
  def edit
  end

  # POST /usuario_cargos or /usuario_cargos.json
  def create
    @usuario_cargo = UsuarioCargo.new(usuario_cargo_params)

    respond_to do |format|
      if @usuario_cargo.save
        format.html { redirect_to @usuario_cargo, notice: "Usuario cargo was successfully created." }
        format.json { render :show, status: :created, location: @usuario_cargo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usuario_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_cargos/1 or /usuario_cargos/1.json
  def update
    respond_to do |format|
      if @usuario_cargo.update(usuario_cargo_params)
        format.html { redirect_to @usuario_cargo, notice: "Usuario cargo was successfully updated." }
        format.json { render :show, status: :ok, location: @usuario_cargo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_cargos/1 or /usuario_cargos/1.json
  def destroy
    @usuario_cargo.destroy
    respond_to do |format|
      format.html { redirect_to usuario_cargos_url, notice: "Usuario cargo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_cargo
      @usuario_cargo = UsuarioCargo.where("id = ?", params[:id]).first
    end

    # Only allow a list of trusted parameters through.
    def usuario_cargo_params
      params.require(:usuario_cargo).permit(:usuario_id, :cargo_id)
    end
end
