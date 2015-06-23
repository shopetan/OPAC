class CreateOpacs < ActiveRecord::Migration
  def change
    create_table :opacs do |t|
      t.text :nbc
      t.text :isbn
      t.text :tr
      t.text :author
      t.text :pub
      t.text :year
      t.text :phys
      t.text :series
      t.text :note
      t.text :titleheading
      t.text :authorheading
      t.text :holdingsrecord
      t.text :holdingloc

      t.timestamps null: false
    end
  end
end
