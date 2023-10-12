class HealthsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @healths = Health.all
  end

  def new
    @health = Health.new
  end

  def create
    @health = Health.new(health_params)
    if @health.save
      redirect_to root_path
    else
      render :new
    end
  end
  

  private

  def health_params
    params.require(:health).permit(:stress , :stress_score , :refresh , :refresh_score ,:assess_id , :weight_id , :image).merge(user_id: current_user.id)
  end

end
