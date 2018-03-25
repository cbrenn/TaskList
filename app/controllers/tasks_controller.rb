class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def tasks_complete
    @tasks = Task.all
  end

  def new
      @task = Task.new
  end

  def create
    task = Task.new(task_params)


    if task.save
      redirect_to tasks_path
    end
  end

  def show
    task_id = params[:id]

   @task = Task.find(task_id)

  end


  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])

    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def complete
    @task = Task.find(params[:id])
    @task.completion_date = Date.today
    @task.status = "closed"
    @task.priority = nil
    @task.save

    if @task.save
      redirect_to tasks_path
    end
  end

  def uncomplete
    @task = Task.find(params[:id])
    @task.completion_date = nil
    @task.status= "open"
    @task.priority = "high"
    @task.save

    if @task.save
      redirect_to tasks_path
    end
  end


  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end

private
  def task_params

    return params.require(:task).permit(:name, :description, :status, :priority, :start_date)
  end
end
