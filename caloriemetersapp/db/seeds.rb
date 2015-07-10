# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(restaurant_name: 'ihop')
Restaurant.create(restaurant_name: 'Dennys')
Restaurant.create(restaurant_name: 'Olive Garden')
Restaurant.create(restaurant_name: 'Burger King')
Restaurant.create(restaurant_name: "Eddie V's")
Restaurant.create(restaurant_name: 'Annam')

Serving.create(serving_size: 'large')
Serving.create(serving_size: 'medium')
Serving.create(serving_size: 'small')

Menu.create(restaurant_id:1, serving_id:1, calories:3000)
Menu.create(restaurant_id:1, serving_id:2, calories:2000)
Menu.create(restaurant_id:1, serving_id:3, calories:1000)
Menu.create(restaurant_id:2, serving_id:1, calories:3000)
Menu.create(restaurant_id:2, serving_id:2, calories:2000)
Menu.create(restaurant_id:2, serving_id:3, calories:1000)
Menu.create(restaurant_id:3, serving_id:1, calories:3000)
Menu.create(restaurant_id:3, serving_id:2, calories:2000)
Menu.create(restaurant_id:3, serving_id:3, calories:1000)
Menu.create(restaurant_id:4, serving_id:1, calories:3000)
Menu.create(restaurant_id:4, serving_id:2, calories:2000)
Menu.create(restaurant_id:4, serving_id:3, calories:1000)

User.create(email:'test', password_hash:'$2a$10$MIxDoEBW2071bWInaPkF1eZCHW3Kg4mHKggvnAKXNQmrzVoTK7AJ.', password_salt:'$2a$10$MIxDoEBW2071bWInaPkF1e' )
User.create(email:'test1', password_hash:'$2a$10$XRTXku5qVwbtQ8ndOWmziOha4YP/QqmKAtSJBx05mx/lVO3CB7huq', password_salt:'$2a$10$XRTXku5qVwbtQ8ndOWmziO' )
User.create(email:'test3', password_hash:'$2a$10$pjqkl3L39JMzbS.72NNVl.j1RwTllgdMp0jptfkxLYLMjzgVNzqv.', password_salt:'$2a$10$pjqkl3L39JMzbS.72NNVl.' )
User.create(email:'test4', password_hash:'$2a$10$cQJBcdrdiVeBPi1rxUuD/OJVCQGAzmjbRPGfPh8i4./9regM0HtSq', password_salt:'$2a$10$cQJBcdrdiVeBPi1rxUuD/O' )


UserInfo.create(user_id:'1', first_name:'Tester' ,last_name: 'One',gender: 'female',height: 160,dob: '1990-12-12',weight: 70)
UserInfo.create(user_id:'2', first_name:'Tester',last_name: 'Two',gender: 'male',height: 170,dob: '1994-12-12',weight: 80 )
UserInfo.create(user_id:'3', first_name:'Tester' ,last_name: 'Three',gender: 'male',height: 180,dob: '1980-12-12',weight: 50)
UserInfo.create(user_id:'4', first_name:'Tester' ,last_name: 'Four',gender: 'female',height: 150,dob: '1987-12-12',weight: 60 )


UserCaloriesDatum.create(user_info_id: '1', date_tracked:'2013-08-01', target: 3000,consumed_calories: 4000)
UserCaloriesDatum.create(user_info_id: '1', date_tracked:'2013-08-02', target: 3000,consumed_calories: 4500)
UserCaloriesDatum.create(user_info_id: '1', date_tracked:'2013-08-03', target: 3000,consumed_calories: 3000)
UserCaloriesDatum.create(user_info_id: '2', date_tracked:'2013-08-01', target: 3000,consumed_calories: 4000)
UserCaloriesDatum.create(user_info_id: '2', date_tracked:'2013-08-02', target: 3000,consumed_calories: 4500)
UserCaloriesDatum.create(user_info_id: '2', date_tracked:'2013-08-03', target: 3000,consumed_calories: 3000)
