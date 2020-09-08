# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Role.create(name: :admin)
Role.create(name: :client)

user1 = User.create(email:                  'admin@mail.com',
					          password:               'password123',
                    password_confirmation:  'password123')
user1.add_role(:admin)

user2 = User.create(email:                  'client@mail.com',
					          password:               'password123',
					          password_confirmation:  'password123')
user2.add_role(:client)

# 1.upto(5) do |i|
# 	Company.create(title: "Book #{i}", author: "Author #{i}", description: "A sample book", pages: i*10, published: "2018-#{i}-10")
# end