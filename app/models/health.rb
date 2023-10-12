class Health < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :assess
  belongs_to :weight

  # 主なストレス・リフレッシュになると挙げた事例
  validates :stress  , presence: true
  validates :refresh , presence: true
  
  # ストレス要因・リフレッシュ習慣の総合点数
  with_options presence: true , numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 120, message: "is invalid"} do
    validates :stress_score  , presence: true
    validates :refresh_score , presence: true
  end

  with_options presence: true , numericality: { other_than: 0, message: "must be other than 0" } do
    validates :assess_id  , presence: true
    validates :weight_id  , presence: true
  end


  has_one_attached :image

  belongs_to :user

end
