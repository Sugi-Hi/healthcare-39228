class CreateCares < ActiveRecord::Migration[6.0]
  def change
    create_table :cares do |t|
      t.date          :care_date,     null: false
      t.datetime      :cate_time
      t.text          :care_place
      t.string        :go_by
      t.integer       :caremethod_id, null: false
      t.references    :user         , null: false, foreign_key: true
      t.references    :health       , null: false, foreign_key: true

      t.timestamps
    end
  end
end
