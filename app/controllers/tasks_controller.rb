class TasksController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_tasks, only: [:edit, :update, :destroy]
  respond_to :html, :js

  def index
    @tasks = Task.all
  
    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @task = Task.new
  end
  
  def update
    @task.update_attributes(task_params)
  end

  def create
    @task  = Task.create(task_params)
  end
  
  def destroy
    @task.destroy
  end

  private

    def all_tasks
      @tasks = Task.all
    end
    
    def set_tasks
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:task, :due_date, :is_completed, :user_id)
    end
end