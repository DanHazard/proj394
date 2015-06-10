class UserPagesController < ApplicationController
  def profile
    @skillset = Skillset.where(client_id: current_user.id)
  end

  def browse_jobs
  end

  def employers
  end
end
