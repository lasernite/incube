class ProjectsController < ApplicationController

	def index
		@projects = Project.where(approved: true).shuffle
	end

	def new
		@project = Project.new
	end

	def create
		Project.create(project_params)
		@projects = Project.where(approved: true)
		render 'projects/create_success'
	end

private
	def project_params
		params.require(:project).permit(:name, :description, :image, :contact, :website, :picture)
	end

end
