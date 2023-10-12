class HealthsController < ApplicationController
  
  def index
    @healths = Health.all
  end

  def new
    @health = Health.new
  end

  def create
  end
  
end
