class Health < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :Stressdoa
  belongs_to :Stressdob
  belongs_to :Stressdoc
  belongs_to :Stressdod
  belongs_to :Stressfeela
  belongs_to :stressfeelb
  belongs_to :stressfeelc
  belongs_to :stressfeeld
  belongs_to :stressweight

  belongs_to :refreshdoa
  belongs_to :refreshdob
  belongs_to :refreshdoc
  belongs_to :refreshdod
  belongs_to :refreshfeela
  belongs_to :refreshfeelb
  belongs_to :refreshfeelc
  belongs_to :refreshfeeld
  belongs_to :refreshweight

  # 主なストレス・リフレッシュになると挙げた事例
  validates :stress  , presence: true
  validates :refresh , presence: true
  
  # ストレス要因・リフレッシュ習慣の総合点数はカラムでなく変数での計算！
  # with_options  presence: true do# numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 120, message: "is invalid"} 
  #   validates :stress_score  
  #   validates :refresh_score 
  # end

  with_options  numericality: {only_integer: true, other_than: 0, message: "must be other than 0" } do
    validates :stressdoa_id
    validates :stressdob_id  
    validates :stressdoc_id  
    validates :stressdod_id 
    validates :stressfeela_id  
    validates :stressfeelb_id  
    validates :stressfeelc_id  
    validates :stressfeeld_id  
    validates :stressweight_id  

    validates :refreshdoa_id  
    validates :refreshdob_id  
    validates :refreshdoc_id 
    validates :refreshdod_id  
    validates :refreshfeela_id  
    validates :refreshfeelb_id  
    validates :refreshfeelc_id  
    validates :refreshfeeld_id  
    validates :refreshweight_id  
  end


  has_one_attached :image

  belongs_to :user

end
