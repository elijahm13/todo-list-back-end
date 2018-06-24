class TodoController < ApplicationController
  def new
  end
  
  def create
    t = Todo.new
    t.description = params[:description]
    t.pomodoros = params[:pomodoros]
    t.status = nil
    t.save
    
    redirect_to '/todo/index'
  end
  
  def index
    @todos = Todo.all
    @incomplete_todos = Todo.where(status: nil)
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
    todo.save
    
    redirect_to "/todo/index"
  end
  def delete
    todo = Todo.find(params[:id].to_i)
    todo.destroy
    
    
    redirect_to '/todo/index'
  end
end