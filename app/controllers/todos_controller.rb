class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    @todos = Todo.all
  end

  private
  def todo_params
    params.require(:todo).permit(:what, :completed_at)
  end
end
