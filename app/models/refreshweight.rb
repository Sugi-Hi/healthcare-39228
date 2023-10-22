class Refreshweight < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '1.通常,特に考えず何となくする。'},
    { id: 2, name: '2.興味→日頃から好きでやってる！'},
    { id: 3, name: '3.大切!常に生きがいになってる！'},
  ]

  include ActiveHash::Associations
  has_many :healths

end