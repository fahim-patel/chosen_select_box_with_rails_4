# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create
Skill.find_or_create_by_name "Painting" 
Skill.find_or_create_by_name "Drawing" 
Skill.find_or_create_by_name "Coding" 
Skill.find_or_create_by_name "Cooking" 
Skill.find_or_create_by_name "Football"