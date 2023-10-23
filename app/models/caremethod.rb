class Caremethod < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '積極的に活躍ができる活動・交流への参加、自己実現!!!'},
    { id: 2, name: '新たな楽しみ・好きな事を探し出すチャレンジ冒険.!!'},
    { id: 3, name: '趣味・やりたい事で気分転換させる日常生活,.!'},
    { id: 4, name: 'どれが自分に合うかわからず未定、どうすれば良いか検討中!??'},
    { id: 5, name: '時間かけず健康飲料などすぐできる自己ケア,.!'},
    { id: 6, name: '仲間同士で健康管理できる語り合える場・時.!!'},
    { id: 7, name: '体調不良あっても回復できる専門ケアの医療機関!!!'},
  ]

  include ActiveHash::Associations
  has_many :cares

  
  # 第2引数のActiveRecordメソッドCaremethod(全id番号：1～7)の中から部分指定(範囲id番号：1～3)との試行錯誤！
  # if ( @health.refreshdoa_id.to_i + @health.refreshdob_id.to_i + @health.refreshdoc_id.to_i + @health.refreshdod_id.to_i + @health.refreshfeela_id.to_i + @health.refreshfeelb_id.to_i + @health.refreshfeelc_id.to_i + @health.refreshfeeld_id.to_i ) * @health.refreshweight_id.to_i - ( @health.stressdoa_id.to_i + @health.stressdob_id.to_i + @health.stressdoc_id.to_i + @health.stressdod_id.to_i + @health.stressfeela_id.to_i + @health.stressfeelb_id.to_i + @health.stressfeelc_id.to_i + @health.stressfeeld_id.to_i ) * @health.stressweight_id.to_i > 0
  #   self.data = [
  #   { id: 0, name: '---' },
  #   { id: 1, name: '積極的に活躍ができる活動・交流への参加、自己実現!!!'},
  #   { id: 2, name: '新たな楽しみ・好きな事を探し出すチャレンジ冒険.!!'},
  #   { id: 3, name: '趣味・やりたい事で気分転換させる日常生活,.!'},

  #   ]
  # end

end