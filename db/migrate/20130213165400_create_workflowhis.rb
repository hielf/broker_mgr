class CreateWorkflowhis < ActiveRecord::Migration
  def change
    create_table :workflowhis do |t|
      t.integer :flowid
      t.string :content
      t.string :remark

      t.timestamps
    end
  end
end
