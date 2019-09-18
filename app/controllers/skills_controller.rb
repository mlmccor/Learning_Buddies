class SkillsController < ApplicationController
    def show
        @skill = Skill.find_by(id: params[:id])
        if !@skill
            render :json => {error: "Skill not found"}
        end 

        respond_to do |format|
            format.json  { render :json => @skill }
        end
    end

    def index
        @skills = Skill.all

        respond_to do |format|
            format.json  { render :json => @skills }
        end
    end
end
