class Caremethod < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '積極的に活躍ができる活動・交流への参加!!!' },
    { id: 2, name: '新たな楽しみ・好きな事を探し出す移動・冒険.!!' },
    { id: 3, name: '趣味・やりたい事をやり続ける日常生活,.!'},
    { id: 4, name: 'どれが自分に合うかわからず未定、どうすれば良いか検討中!??'},
    { id: 5, name: '時間かけず健康飲料などすぐできる自己ケア,.!' },
    { id: 6, name: '仲間同士でできる癒しのグループケアの場・時.!!' },
    { id: 7, name: '体調異変が起きても復活できる専門的ケア医療機関!!!' },

  ]

  include ActiveHash::Associations
  has_many :cares

end