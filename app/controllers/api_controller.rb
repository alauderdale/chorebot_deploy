class ApiController < ApplicationController


  def who_is_today
    @currently_assigned = User.current_chore_user
    render :text => @currently_assigned.try(:username)  || "no one assigned to do chores"
  end

end
