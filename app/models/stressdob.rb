class Stressdob < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '1.低い/少ない' },
    { id: 2, name: '2.やや 低い/少ない' },
    { id: 3, name: '3.普通/いつも通り' },
    { id: 4, name: '4.やや 高い/多い' },
    { id: 5, name: '5.高い/多い' },

  ]

  include ActiveHash::Associations
  has_many :healths

end