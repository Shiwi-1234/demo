class TodolistsController < ApplicationController

	def index
      current_task = Task.find_by_id(session[:current_task_id])
		  @q = Task.ransack(params[:q])
       @tasks = @q.result(distinct: true)
	end
	def new
		@task = Task.new
	end
	
	def show
		@task = Task.find(params[:id])
	end



  def create
     @task = Task.new(todo_params)

     CrudNotificationMailer.creat_notification(@task).deliver_now
    if @task.save
      redirect_to todolists_path, notice: 'Task has been created successfully'
    else  
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])

  end

  def update
    @task = Task.find(params[:id])
    if @task.update(todo_params)
      redirect_to todolists_path
    else
      render 'edit'
    end
end
  

  def destroy
     @task = Task.find(params[:id])
    @task.destroy
      redirect_to todolists_path, notice: 'Task has been Deleted successfully'
    
  end


 private
  def todo_params
    params.require(:task).permit(:name, :email, :task, :task_time, :task_date , :image)
  end
end
