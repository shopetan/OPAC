class AddColumnToOpac < ActiveRecord::Migration
  def change
    add_column :opacs, :ed, :text
    add_column :opacs, :holdingphys, :text
  end
end
