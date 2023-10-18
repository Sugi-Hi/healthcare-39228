class CreateCares < ActiveRecord::Migration[6.0]
  def change
    create_table :cares do |t|

      t.timestamps
    end
  end
end
