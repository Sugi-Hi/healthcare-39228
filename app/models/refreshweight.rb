class Refreshweight < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '1.通常,,' },
    { id: 2, name: '2.関心→' },
    { id: 3, name: '3.大切!!' },
 

  ]

  include ActiveHash::Associations
  has_many :healths

end