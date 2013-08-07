class CreateWorkflowexes < ActiveRecord::Migration
  def change
    create_table :workflowexes do |t|
      t.integer :flowid
      t.integer :step
      t.string :content
      t.string :remark

      t.timestamps
    end
  end
end
