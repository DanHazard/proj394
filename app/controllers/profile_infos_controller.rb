class ProfileInfosController < ApplicationController
  before_action :set_profile_info, only: [:show, :edit, :update, :destroy]

  # GET /profile_infos
  # GET /profile_infos.json
  def index
    @profile_infos = ProfileInfo.all
  end

  # GET /profile_infos/1
  # GET /profile_infos/1.json
  def show
  end

  # GET /profile_infos/new
  def new
    @profile_info = ProfileInfo.new
  end

  # GET /profile_infos/1/edit
  def edit
  end

  # POST /profile_infos
  # POST /profile_infos.json
  def create
    @profile_info = ProfileInfo.new(profile_info_params)

    respond_to do |format|
      if @profile_info.save
        format.html { redirect_to @profile_info, notice: 'Profile info was successfully created.' }
        format.json { render :show, status: :created, location: @profile_info }
      else
        format.html { render :new }
        format.json { render json: @profile_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_infos/1
  # PATCH/PUT /profile_infos/1.json
  def update
    respond_to do |format|
      if @profile_info.update(profile_info_params)
        format.html { redirect_to @profile_info, notice: 'Profile info was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_info }
      else
        format.html { render :edit }
        format.json { render json: @profile_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_infos/1
  # DELETE /profile_infos/1.json
  def destroy
    @profile_info.destroy
    respond_to do |format|
      format.html { redirect_to profile_infos_url, notice: 'Profile info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_info
      @profile_info = ProfileInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_info_params
      params.require(:profile_info).permit(:client_id, :fname, :lname, :city, :state)
    end
end
