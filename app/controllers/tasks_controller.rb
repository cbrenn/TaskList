class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
      @task = Task.new
  end

  def create

    raw_task = params[:task]

    task = Task.new
    task.description = raw_task[:description]
    task.status =  raw_task[:status]
    task.priority = raw_task[:priority]
    task.start_date = raw_task[:start_date]


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
    raw_task = params[:book]

    task = Task.find(params[:id])

    task.update_attributes(
      description: raw_task[:description],
      status:  raw_task[:status],
      priority:  raw_task[:priority],
      start_date: raw_task[:start_date]
      )

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end
end
