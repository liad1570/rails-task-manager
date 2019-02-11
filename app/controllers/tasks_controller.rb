class TasksController < ApplicationController
	
	def index
	@tasks = Task.all 

	end

	def show
	@task = Task.find(params[:id])

	end
	def new
		@task = Task.new()

	end

	def create
	   @task = Task.new(all_good)
	   @task.save
	   redirect_to tasks_path
  end

  def edit 
  	@task = Task.find(params[:id])

  end
	
	def update
		@task = Task.find(params[:id])
    @task.update(all_good)
    redirect_to tasks_path
	end 
	def destroy
		 @task = Task.find(params[:id])
     @task.destroy
     redirect_to tasks_path
  end	

	private
		def all_good
			params.require(:task).permit(:title, :details)
		end

end
