class UserPagesController < ApplicationController

  def profile
    @skillset = Skillset.where(client_id: current_user.id).first
    @profileInfo = ProfileInfo.where(client_id: current_user.id)
    # @skills = Skillset.find(client_id: current_user.id)
  end

  def browse_jobs
    @skillset = Skillset.where(client_id: current_user.id).first
    @googleskills = Skillset.where(client_id: 4).first
    @facebookskills = Skillset.where(client_id: 5).first
    @uberskills = Skillset.where(client_id: 6).first
    @facebookarray = [@facebookskills.project_management, @facebookskills.scripting, @facebookskills.programming, @facebookskills.dbadmin, @facebookskills.ui_ux, @facebookskills.algorithms, @facebookskills.system_design, @facebookskills.web_dev, @facebookskills.mobile_dev, @facebookskills.sysarchitecture, @facebookskills.ai, @facebookskills.game_programming]
    @uberarray = [@uberskills.project_management, @uberskills.scripting, @uberskills.programming, @uberskills.dbadmin, @uberskills.ui_ux, @uberskills.algorithms, @uberskills.system_design, @uberskills.web_dev, @uberskills.mobile_dev, @uberskills.sysarchitecture, @uberskills.ai, @uberskills.game_programming]
    @googlearray = [@googleskills.project_management, @googleskills.scripting, @googleskills.programming, @googleskills.dbadmin, @googleskills.ui_ux, @googleskills.algorithms, @googleskills.system_design, @googleskills.web_dev, @googleskills.mobile_dev, @googleskills.sysarchitecture, @googleskills.ai, @googleskills.game_programming]
    @userarray = [@skillset.project_management, @skillset.scripting, @skillset.programming, @skillset.dbadmin, @skillset.ui_ux, @skillset.algorithms, @skillset.system_design, @skillset.web_dev, @skillset.mobile_dev, @skillset.sysarchitecture, @skillset.ai, @skillset.game_programming]

     googletotal = 0
     @googlearray.each do |i|
        if i == 1
            googletotal += 1
        end
     end

     googlecount = 0
     (1..14).each do |n|
       if @userarray[n] == 1 && @googlearray[n] == 1
         googlecount += 1
       end
     end

     @googleper = (googlecount/googletotal.to_f)*100.00

     fbtotal = 0
     @facebookarray.each do |j|
       if j == 1
         fbtotal += 1
       end
     end

     fbcount = 0
     (1..14).each do |k|
       if @userarray[k] == 1 && @facebookarray[k] == 1
         fbcount += 1
       end
     end

     @fbper = (fbcount/fbtotal.to_f)*100.00

     ubertotal = 0
     @uberarray.each do |x|
       if x == 1
         ubertotal += 1
       end
     end

     ubercount = 0
     (1..14).each do |z|
       if @userarray[z] == 1 && @uberarray[z] == 1
         ubercount += 1
       end
     end

     @uberper = (ubercount/ubertotal.to_f)*100.00

  end

  def employers
    @skillset = Skillset.where(client_id: current_user.id).first
    @employerInfo = EmployerInfo.where(client_id: current_user.id)
  end
end
