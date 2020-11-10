class TasksController < ApplicationController

  def list # As a user, I can list tasks
    @tasks = Task.all
  end

  def view # As a user, I can view the details of a task
  end

  def new # As a user, I can add a new task
  end

  def create # As a user, I can add + save a new task
  end

  def edit  # As a user, I can edit a task (mark as completed / update title & details)
  end

  def update
  end

  def remove # As a user, I can remove a task
  end
end
