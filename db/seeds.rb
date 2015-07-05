# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.foreach('vendor/opac/hyperOPAC.txt') do |line|
  next if $. == 0
  line = line.chomp

  items = line.split("|")

  Opac.create({:nbc => items[0],
               :isbn => items[1],
               :tr => items[2],
               :author => items[3],
							 :ed => items[4],
               :pub => items[5],
               :year => items[6],
               :phys => items[7],
               :series => items[8],
               :note => items[9],
               :titleheading => items[10],
               :authorheading => items[11],
							 :holdingsrecord => items[12],
							 :holdingphys => items[13],
               :holdingloc => items[14]})
end
