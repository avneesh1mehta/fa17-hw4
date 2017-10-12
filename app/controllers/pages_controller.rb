class TodosController < ApplicationController
  def home
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all

    @td = Todo.new
  end

  def new
    @todo = Todo.new()
  end

  def create
    t = Todo.new
    t.tasks = params[:todo][:tasks]
    t.finished = params[:todo][:finished]
    t.save!

    redirect_to root_path
  end
end
