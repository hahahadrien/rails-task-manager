class TasksController < ApplicationController

  def index # As a user, I can list tasks
    @tasks = Task.all # ici c'est l'instance de classe Task generee par le Model
  end

  def show # As a user, I can view the details of a task
    # raise
    @task = Task.find(params[:id])
  end

  def new # As a user, I can add a new task
     @task = Task.new
  end

  def create # As a user, I can add + save a new task
    # strong params
    @task = Task.new(task_params) # strong params
    @task.save
    # redirect_to "restaurants/#{@restaurant.id}"
    redirect_to task_path(@task) # C'est comme un link to => vers le prefix que j'ai dans mes rails routes (terminal)
  end

  def edit # As a user, I can edit a task (mark as completed / update title & details)
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def delete # As a user, I can remove a task
    @task = Task.find(params[:id])
    @task.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params # Definition des strong params, auxquels on peut avoir acces (hors security)
    # paramis.require (:nom du model).permit(:nom des params qu'on veut)
    params.require(:task).permit(:title, :details, :completed)
  end
end
