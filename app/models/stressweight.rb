class Stressweight < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '1.不問.別に気にしなくても良い。' },
    { id: 2, name: '2.注意!気になるが何とかなる状況。' },
    { id: 3, name: '3.重大!気を付けねばならぬ事情！'},
 

  ]

  include ActiveHash::Associations
  has_many :healths

end