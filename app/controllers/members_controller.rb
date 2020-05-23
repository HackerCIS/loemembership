class MembersController < ApplicationController
  def join_form
  end

  def join
    @member = Member.new
    
    @member.name = params[:name]
    @member.school = params[:school]
    @member.grade = params[:grade]
    @member.birth = params[:birth]
    @member.phone_number1 = params[:phone_number1]
    @member.phone_number2 = params[:phone_number2]
    @member.phone_number3 = params[:phone_number3]
    @member.count_visit = 1
    @member.point = 500
    @member.level = params[:level]

    @member.save
    
    redirect_to "/members/join_completed"
  end
  
  def join_completed
    
  end

  def m_form
    @member = Member.find(params[:id])
  end

  def j_update
    @member = Member.find(params[:id])
    
    @member.name = params[:name]
    @member.school = params[:school]
    @member.grade = params[:grade]
    @member.birth = params[:birth]
    @member.phone_number1 = params[:phone_number1]
    @member.phone_number2 = params[:phone_number2]
    @member.phone_number3 = params[:phone_number3]
    @member.level = params[:level]
    
    @member.save
    
    redirect_to "/members/member_list"
  end

  def member_list
    @members = Member.all
  end

  def member_show
  end

  def member_delete
  end
  
  def visit
    
    if params[:phonenumber1].present?
      @members = Member.all
      
      phonenum = params[:phonenumber1]
      
      @members.each do |member|
        if member.phone_number2==phonenum[4..7] && member.phone_number3 == phonenum[9..12]
          @visitor = member.name
          member.count_visit = member.count_visit+1
          @count_visit = member.count_visit
          
          member.save
          
          respond_to do |format|
            format.js
          end
        end
      end
    end
    
  end
  
  def visit_button
    @num = params[:num]
    
    respond_to do |format|
        format.js
    end
  end
end
