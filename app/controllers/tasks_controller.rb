class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create]

  def index
    @tasks = Task.all
  end

  def show
    @status = @task.completed? ?
    "You have completed this task." :
    "This task is still not complete!"
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
