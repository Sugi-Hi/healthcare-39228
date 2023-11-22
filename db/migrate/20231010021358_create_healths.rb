class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      # 特にストレス要因、リフレッシュ習慣になっている主題名
      t.string      :stress         , null:false
      t.string      :refresh        , null:false
      # ストレス点数
      t.integer     :stressdoa_id        , null:false
      t.integer     :stressdob_id        , null:false
      t.integer     :stressdoc_id        , null:false
      t.integer     :stressdod_id        , null:false
      t.integer     :stressfeela_id      , null:false
      t.integer     :stressfeelb_id      , null:false
      t.integer     :stressfeelc_id      , null:false
      t.integer     :stressfeeld_id      , null:false

      t.integer     :stressweight_id    , null:false
      # リフレッシュ点数
      t.integer     :refreshdoa_id       , null:false
      t.integer     :refreshdob_id       , null:false
      t.integer     :refreshdoc_id       , null:false
      t.integer     :refreshdod_id       , null:false
      t.integer     :refreshfeela_id     , null:false
      t.integer     :refreshfeelb_id     , null:false
      t.integer     :refreshfeelc_id     , null:false
      t.integer     :refreshfeeld_id     , null:false

      t.integer     :refreshweight_id   , null:false

      t.references  :user           , null:false , foreign_key: true

      t.timestamps
    end
  end
end
