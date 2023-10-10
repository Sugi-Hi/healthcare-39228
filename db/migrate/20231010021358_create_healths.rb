class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.string      :stress         , null:false
      t.integer     :stress_score   , null:false
      t.string      :refresh        , null:false
      t.integer     :refresh_score  , null:false
      t.integer     :assess_id      , null:false
      t.integer     :weight_id      , null:false
      t.references  :user           , null:false , foreign_key: true

      t.timestamps
    end
  end
end
