class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :attachment_1, :blob
    add_column :products, :attachment_2, :blob
    add_column :products, :attachment_3, :blob
  end
end
