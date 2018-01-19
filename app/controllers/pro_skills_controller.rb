class ProSkillsController < ApplicationController
  before_action :set_pro_skill, only: [:show, :edit, :update, :destroy]

  # GET /pro_skills
  # GET /pro_skills.json
  def index
    @pro_skills = ProSkill.all
  end

  # GET /pro_skills/1
  # GET /pro_skills/1.json
  def show
  end

  # GET /pro_skills/new
  def new
    @pro_skill = ProSkill.new
  end

  # GET /pro_skills/1/edit
  def edit
  end

  # POST /pro_skills
  # POST /pro_skills.json
  def create
    @pro_skill = ProSkill.new(pro_skill_params)

    respond_to do |format|
      if @pro_skill.save
        format.html { redirect_to @pro_skill, notice: 'Pro skill was successfully created.' }
        format.json { render :show, status: :created, location: @pro_skill }
      else
        format.html { render :new }
        format.json { render json: @pro_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pro_skills/1
  # PATCH/PUT /pro_skills/1.json
  def update
    respond_to do |format|
      if @pro_skill.update(pro_skill_params)
        format.html { redirect_to @pro_skill, notice: 'Pro skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @pro_skill }
      else
        format.html { render :edit }
        format.json { render json: @pro_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pro_skills/1
  # DELETE /pro_skills/1.json
  def destroy
    @pro_skill.destroy
    respond_to do |format|
      format.html { redirect_to pro_skills_url, notice: 'Pro skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro_skill
      @pro_skill = ProSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_skill_params
      params.require(:pro_skill).permit(:professional_id, :skill_id)
    end
end
