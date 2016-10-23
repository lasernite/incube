class ProjectsController < ApplicationController

	def index
	end

	def new
		@project = Project.new
	end

	def create
		Project.create(project_params)
		render 'projects/index'
	end

private
	def project_params
		params.require(:project).permit(:name, :description, :image, :contact, :website)
	end

end
