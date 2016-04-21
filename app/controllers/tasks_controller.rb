class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def completeTask
    @task = Task.find(params[:id])
    #if not @task.isCompleted then
    #  @task.isCompleted = true
    render 'succes'
    end
  end
end
