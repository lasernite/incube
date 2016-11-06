class WelcomeController < ApplicationController
  def index
  	@user = User.new
  	@projects = Project.where(approved: true).shuffle
  end
end
