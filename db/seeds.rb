# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.destroy_all
List.destroy_all
Item.destroy_all


Group.create(name: "Group 1")
Group.create(name: "Group 2")
Group.create(name: "Group 3")
Group.create(name: "Group 4")
Group.create(name: "Group 5")
Group.create(name: "Group 6")
Group.create(name: "Group 7")
Group.create(name: "Group 8")


List.create(name: 'List 1', group_id: 17)
List.create(name: 'List 2', group_id: 17)
List.create(name: 'List 3', group_id: 17)
List.create(name: 'List 4', group_id: 17)
List.create(name: 'List 5', group_id: 17)
List.create(name: 'List 6', group_id: 17)
List.create(name: 'List 7', group_id: 17)


Item.create(name: 'Item 1', list_id: 1)
Item.create(name: 'Item 2', list_id: 1)
Item.create(name: 'Item 3', list_id: 1)
Item.create(name: 'Item 4', list_id: 1)
Item.create(name: 'Item 5', list_id: 1)
Item.create(name: 'Item 6', list_id: 1)
Item.create(name: 'Item 7', list_id: 1)
Item.create(name: 'Item 8', list_id: 1)