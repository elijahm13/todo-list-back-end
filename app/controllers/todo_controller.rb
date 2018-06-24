class TodoController < ApplicationController
  def new
  end
  
  def create
    t = Todo.new
    t.description = params[:description]
    t.pomodoros = params[:pomodoros]
    t.status = nil
    t.duedate = params[:duedate]
    t.save
    
    redirect_to '/todo/index'
  end
  
  def index
    @incomple_todos = Todo.where(status: nil)
    @due_today = @incomple_todos.where(duedate: Date.today)
    @due_tomorrow = @incomple_todos.where(duedate: Date.tomorrow)
    @due_later = Array.new
    
    @incomple_todos.each do |todo|
      unless todo.duedate == Date.today || todo.duedate == Date.tomorrow
      @due_later << todo
    end
  end
    @completed_todos = Todo.where(status: true)
  end
  
  def show
    @todo = Todo.find(params[:id].to_i)
  end
  
  def edit
    @todo = Todo.find(params[:id].to_i)
  end
  
  def update
    todo = Todo.find(params[:id].to_i)
    todo.status = params[:status]
    todo.description = params[:description]
    todo.pomodoros = params[:pomodoros]
    todo.duedate = params[:duedate]
    todo.save
    
    redirect_to "/todo/index"
  end
  def delete
    todo = Todo.find(params[:id].to_i)
    todo.destroy
    
    
    redirect_to '/todo/index'
  end
end