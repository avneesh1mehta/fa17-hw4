class UsersController < ApplicationController
  def new
    @todo = Todo.new
    @users = User.all
    @cats = Cat.all
    @todos = Todo.all
    render "index"
  end
end
