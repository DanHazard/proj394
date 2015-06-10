class UserPagesController < ApplicationController
  def profile
    @skillset = Skillset.where(client_id: current_user.id)
    @profileInfo = ProfileInfo.where(client_id: current_user.id)
  end

  def browse_jobs
  end

  def employers
    @skillset = Skillset.where(client_id: current_user.id)
    @employerInfo = EmployerInfo.where(client_id: current_user.id)
  end
end
