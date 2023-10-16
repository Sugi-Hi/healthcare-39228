class HealthsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_health , except: [:index , :new , :create]

  def index
    @healths = Health.includes(:user).order("created_at DESC")
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
  
  def show
  end





  private

  def health_params
    params.require(:health).permit(:stress , :stressdoa_id , :stressdob_id ,:stressdoc_id ,:stressdod_id ,
                                   :stressfeela_id , :stressfeelb_id ,:stressfeelc_id ,:stressfeeld_id ,:stressweight_id , 
                                   :refresh , :refreshdoa_id , :refreshdob_id ,:refreshdoc_id ,:refreshdod_id ,
                                   :refreshfeela_id , :refreshfeelb_id , :refreshfeelc_id , :refreshfeeld_id , :refreshweight_id , 
                                   :image).merge(user_id: current_user.id)
  end

  def set_health
    @health = Health.find(params[:id])
  end

end
