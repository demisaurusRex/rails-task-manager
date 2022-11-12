class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Tasks.new
  end

end
