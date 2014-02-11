class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :f1, :blob
    add_column :products, :f2, :blob
    add_column :products, :f3, :blob
  end
end
