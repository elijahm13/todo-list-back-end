class TodoController < ApplicationController
  def index
  end
  
  def show
    if params[:id] == "1"
    @description = "Make the curriculum"
    @pomodoro = "4"
    elsif params[:id] == "2"
      @description = "Buy workshop supplies"
      @pomodoro = "3"
    elsif params[:id]  == "3"
     @description = "Meet with the volunteer trainers"
     @pomodoro = "2"
    elsif params[:id] == "4"
     @description = "Order food for Saturday and Sunday"
     @pomodoro = "1"
    elsif params[:id] == "5"
     @description = "Check pre-work assignments"
     @pomodoro = "2"
    elsif params[:id] == "6"
     @description = "Send workshop location to all the students"
     @pomodoro = "1"
    elsif params[:id] == "7"
     @description = "Have a great workshop"
     @pomodoro = "0"
    end
  end
end