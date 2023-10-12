class Weight < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '1.不問..' },
    { id: 2, name: '2.注目.!' },
    { id: 3, name: '3.重要!!' },
 

  ]

  include ActiveHash::Associations
  has_many :healths

end