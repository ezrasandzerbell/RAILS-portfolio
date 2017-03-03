class ProjectsController < ApplicationController
  def index
    response = RestClient.get("https://api.github.com/users/ezrasandzerbell/repos?access_token=#{ENV['api_key']}")
    @projects = JSON.parse response
  end
end
