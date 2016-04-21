class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def complete
    @task = Task.find(params[:id])
    if @task.isCompleted != true then
      @task.isCompleted = true
      @task.save
    end

    redirect_to @task
  end
end
