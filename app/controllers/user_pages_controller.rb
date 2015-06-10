class UserPagesController < ApplicationController

  def profile
    @skillset = Skillset.where(client_id: current_user.id).first
    @profileInfo = ProfileInfo.where(client_id: current_user.id)
    @workset = WorkCulture.where(client_id: current_user.id).first
    # @skills = Skillset.find(client_id: current_user.id)
  end

  def browse_jobs
    @skillset = Skillset.where(client_id: current_user.id).first
    @googleskills = Skillset.where(client_id: 4).first
    @facebookskills = Skillset.where(client_id: 5).first
    @uberskills = Skillset.where(client_id: 6).first
    @workset = WorkCulture.where(client_id: current_user.id).first
    @googlework = WorkCulture.where(client_id: 4).first
    @fbwork = WorkCulture.where(client_id: 5).first
    @uberwork = WorkCulture.where(client_id: 6).first
    @userworkarray = [@workset.creative, @workset.logical, @workset.problem_solver, @workset.listener, @workset.oral_communicator, @workset.written_communicator, @workset.people_skills, @workset.punctual, @workset.accurate, @workset.efficient, @workset.multitasker, @workset.planner, @workset.researcher, @workset.leader, @workset.team_member]
    @googlecul = [@googlework.creative, @googlework.logical, @googlework.problem_solver, @googlework.listener, @googlework.oral_communicator, @googlework.written_communicator, @googlework.people_skills, @googlework.punctual, @googlework.accurate, @googlework.efficient, @googlework.multitasker, @googlework.planner, @googlework.researcher, @googlework.leader, @googlework.team_member]
    @fbcul = [@fbwork.creative, @fbwork.logical, @fbwork.problem_solver, @fbwork.listener, @fbwork.oral_communicator, @fbwork.written_communicator, @fbwork.people_skills, @fbwork.punctual, @fbwork.accurate, @fbwork.efficient, @fbwork.multitasker, @fbwork.planner, @fbwork.researcher, @fbwork.leader, @fbwork.team_member]
    @ubercul = [@uberwork.creative, @uberwork.logical, @uberwork.problem_solver, @uberwork.listener, @uberwork.oral_communicator, @uberwork.written_communicator, @uberwork.people_skills, @uberwork.punctual, @uberwork.accurate, @uberwork.efficient, @uberwork.multitasker, @uberwork.planner, @uberwork.researcher, @uberwork.leader, @uberwork.team_member]
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

     #######################################################

     googleworktotal= 0
     @googlecul.each do |i|
       if i == 1
         googleworktotal += 1
       end
     end

     googleworkcount = 0
     (1..15).each do |n|
       if @userworkarray[n] == 1 && @googlecul[n] == 1
         googleworkcount += 1
       end
     end

     @googleworkper = (googleworkcount/googleworktotal.to_f)*100.00

     fbworktotal = 0
     @fbcul.each do |j|
       if j == 1
         fbworktotal += 1
       end
     end

     fbworkcount = 0
     (1..15).each do |k|
       if @userworkarray[k] == 1 && @fbcul[k] == 1
         fbworkcount += 1
       end
     end

     @fbworkper = (fbworkcount/fbworktotal.to_f)*100.00

     uberworktotal = 0
     @ubercul.each do |x|
       if x == 1
         uberworktotal += 1
       end
     end

     uberworkcount = 0
     (1..15).each do |z|
       if @userworkarray[z] == 1 && @ubercul[z] == 1
         uberworkcount += 1
       end
     end

     @uberworkper = (uberworkcount/uberworktotal.to_f)*100.00

  end

  def employers
    @skillset = Skillset.where(client_id: current_user.id).first
    @employerInfo = EmployerInfo.where(client_id: current_user.id)
  end
end
