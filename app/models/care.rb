class Care < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :caremethod


  validates :care_date    , presence: true
  validates :caremethod_id, numericality: {only_integer: true, other_than: 0, message: "must be other than 0" }

  belongs_to :user
  belongs_to :health , dependent: :destroy
end
