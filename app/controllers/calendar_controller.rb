class CalendarController < ApplicationController
  def index
    @coach_calls = Call.where(coach_id: current_user.id)
    @student_calls = Call.where(student_id: current_user.id)
  end
end
