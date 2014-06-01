class UsersController < ApplicationController
  def show
  	user = User.find_by_id params[:id]
  	gon.user_id = user.id
  	gon.skills_users_ids = user.skill_ids
  end

  def update_skills_users
  	user = User.find_by_id params[:id]
    if user.present?
      skill_param = params[:skill].to_hash
      skill = Skill.where :id => skill_param.values.first.to_i
      if skill_param.keys.first == "selected"
        # add skill
        if skill.present?
          user.skills << skill
        end
      else
        # remove skill
        if skill.present?
          user.skills.destroy(skill)
        end
      end
    end  
    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
