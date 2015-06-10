class EmployerInfosController < ApplicationController
  before_action :set_employer_info, only: [:show, :edit, :update, :destroy]

  # GET /employer_infos
  # GET /employer_infos.json
  def index
    @employer_infos = EmployerInfo.all
  end

  # GET /employer_infos/1
  # GET /employer_infos/1.json
  def show
  end

  # GET /employer_infos/new
  def new
    @employer_info = EmployerInfo.new
  end

  # GET /employer_infos/1/edit
  def edit
  end

  # POST /employer_infos
  # POST /employer_infos.json
  def create
    @employer_info = EmployerInfo.new(employer_info_params)

    respond_to do |format|
      if @employer_info.save
        format.html { redirect_to @employer_info, notice: 'Employer info was successfully created.' }
        format.json { render :show, status: :created, location: @employer_info }
      else
        format.html { render :new }
        format.json { render json: @employer_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employer_infos/1
  # PATCH/PUT /employer_infos/1.json
  def update
    respond_to do |format|
      if @employer_info.update(employer_info_params)
        format.html { redirect_to @employer_info, notice: 'Employer info was successfully updated.' }
        format.json { render :show, status: :ok, location: @employer_info }
      else
        format.html { render :edit }
        format.json { render json: @employer_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employer_infos/1
  # DELETE /employer_infos/1.json
  def destroy
    @employer_info.destroy
    respond_to do |format|
      format.html { redirect_to employer_infos_url, notice: 'Employer info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employer_info
      @employer_info = EmployerInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employer_info_params
      params.require(:employer_info).permit(:client_id, :companyName, :city, :state)
    end
end
