# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.foreach('vendor/opac/surperOpac.txt') do |line|
  next if $. == 0
  line = line.chomp

  items = line.split("|")

  Opac.create({:nbc => items[0],
               :isbn => items[1],
               :tr => items[2],
               :author => items[3],
               :pub => items[4],
               :year => items[5],
               :phys => items[6],
               :series => items[7],
               :note => items[8],
               :titleheading => items[9],
               :authorheading => items[10],
               :holdingsrecord => items[11],
               :holdingloc => items[12]})
end
