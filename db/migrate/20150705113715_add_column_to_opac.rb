class AddColumnToOpac < ActiveRecord::Migration
  def change
    add_column :opacs, :ed, :text
  end
end
