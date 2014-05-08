# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: '1@1.com', password: '1').add_role(:admin)
User.create(email: '2@2.com', password: '2').add_role(:manager)
User.create(email: '3@3.com', password: '3').add_role(:deliver)
User.create(email: '4@4.com', password: '4').add_role(:user)

