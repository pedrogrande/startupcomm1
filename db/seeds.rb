# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create(user_id: 1, name: 'Launch Party', start_time: DateTime.now + 1.day, end_time: DateTime.now + 2.days)
puts 'First event created successfully'
Event.create(user_id: 1, name: 'Sunday Coder Party', start_time: DateTime.now + 2.days, end_time: DateTime.now + 3.days)
puts 'Second event created successfully'




