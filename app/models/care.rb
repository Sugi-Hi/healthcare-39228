class Care < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :caremethod


  validates :care_date    , presence: true
  validates :caremethod_id, presence: true

  belongs_to :user
  belongs_to :health
end
