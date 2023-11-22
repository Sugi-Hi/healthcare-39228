class CreateCares < ActiveRecord::Migration[6.0]
  def change
    create_table :cares do |t|
      # 対策の日程(必須)・時間帯(任意)
      t.date          :care_date,     null: false
      t.time          :care_time
      # 対策の場所(任意)
      t.text          :care_place
      # 対策の為の交通手段(任意)
      t.string        :go_by
      # 対策手段の選択(必須)
      t.integer       :caremethod_id, null: false
      
      t.references    :user         , null: false, foreign_key: true
      t.references    :health       , null: false, foreign_key: true

      t.timestamps
    end
  end
end
