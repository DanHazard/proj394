class WorkCulturesController < ApplicationController
  before_action :set_work_culture, only: [:show, :edit, :update, :destroy]

  # GET /work_cultures
  # GET /work_cultures.json
  def index
    @work_cultures = WorkCulture.all
  end

  # GET /work_cultures/1
  # GET /work_cultures/1.json
  def show
  end

  # GET /work_cultures/new
  def new
    @work_culture = WorkCulture.new
  end

  # GET /work_cultures/1/edit
  def edit
  end

  # POST /work_cultures
  # POST /work_cultures.json
  def create
    @work_culture = WorkCulture.new(work_culture_params)

    respond_to do |format|
      if @work_culture.save
        format.html { redirect_to @work_culture, notice: 'Work culture was successfully created.' }
        format.json { render :show, status: :created, location: @work_culture }
      else
        format.html { render :new }
        format.json { render json: @work_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_cultures/1
  # PATCH/PUT /work_cultures/1.json
  def update
    respond_to do |format|
      if @work_culture.update(work_culture_params)
        format.html { redirect_to @work_culture, notice: 'Work culture was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_culture }
      else
        format.html { render :edit }
        format.json { render json: @work_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_cultures/1
  # DELETE /work_cultures/1.json
  def destroy
    @work_culture.destroy
    respond_to do |format|
      format.html { redirect_to work_cultures_url, notice: 'Work culture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_culture
      @work_culture = WorkCulture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_culture_params
      params.require(:work_culture).permit(:client_id, :creative, :logical, :problem_solver, :listener, :oral_communicator, :written_communicator, :people_skills, :punctual, :accurate, :efficient, :multitasker, :planner, :researcher, :leader, :leader, :team_member)
    end
end
