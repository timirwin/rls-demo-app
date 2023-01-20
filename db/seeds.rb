# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tim = User.create_with(name: 'Tim').find_or_create_by(id: 1)
john = User.find_or_create_by(name: 'John')
wes = User.find_or_create_by(name: 'Wes')

menomonie = Tenant.create_with(name: 'Menomonie').find_or_create_by(id: 1)
holly_springs = Tenant.find_or_create_by(name: 'Holly Springs')
knoxville = Tenant.find_or_create_by(name: 'Knoxville')

Customer.find_or_create_by(name: 'Customer M1', tenant_id: menomonie.id)
Customer.find_or_create_by(name: 'Customer M2', tenant_id: menomonie.id, user_id: tim.id)
Customer.find_or_create_by(name: 'Customer M3', tenant_id: menomonie.id, user_id: tim.id)
Customer.find_or_create_by(name: 'Customer M4', tenant_id: menomonie.id)
Customer.find_or_create_by(name: 'Customer M5 for Wes', tenant_id: menomonie.id, user_id: wes.id)

Customer.find_or_create_by(name: 'Spring 1', tenant_id: holly_springs.id)
Customer.find_or_create_by(name: 'Spring 2', tenant_id: holly_springs.id, user_id: john.id)
Customer.find_or_create_by(name: 'Spring 3', tenant_id: holly_springs.id, user_id: john.id)
Customer.find_or_create_by(name: 'Spring 4', tenant_id: holly_springs.id)

Customer.find_or_create_by(name: 'Knox 1', tenant_id: knoxville.id)
Customer.find_or_create_by(name: 'Knox 2', tenant_id: knoxville.id, user_id: wes.id)
Customer.find_or_create_by(name: 'Knox 3', tenant_id: knoxville.id, user_id: wes.id)
Customer.find_or_create_by(name: 'Knox 4', tenant_id: knoxville.id)
Customer.find_or_create_by(name: 'Knox 5 for Tim', tenant_id: knoxville.id, user_id: tim.id)
