class CaresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_health_care 
  before_action :dirrerent_top

  def index
    @cares = Care.all
  end
  
  def new
  end

  def create
    @care = Care.new(care_params)
    if @care.save
      redirect_to health_cares_path(@health)
    else
      @health = @care.health
      @cares = @health.cares
      render "cares/index"
    end
  end

  # 割愛
  # def destroy
  #   @care = Care.find(params[:id])
  #   if @care.destroy
  #     redirect_to health_cares_path(@care.health)
  #   else
  #     @health = @care.health
  #     @cares = @health.cares
  #     render "cares#index"
  #   end
  # end

  private

  def care_params
    params.require(:care).permit(:care_date , :care_time , :care_place , :go_by , :caremethod_id).merge(user_id: current_user.id , health_id: params[:health_id] )
  end

  def dirrerent_top
    unless @health.user_id == current_user.id
      redirect_to root_path
    end
  end

  def set_health_care
    @health = Health.find(params[:health_id])
    @care = Care.new
  end

end
