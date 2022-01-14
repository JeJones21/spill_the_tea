# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tea.destroy_all
Customer.destroy_all
@tea = Tea.create!(title: "Drink UP", description: "Black Mud", temperature: 100, brew_time: 'hour')


@customer_1 = Customer.create!(first_name: "First", last_name: "Last", email: "email@email.com", address: "123 Address St")
@customer_2 = Customer.create!(first_name: "First 2", last_name: "Last 2", email: "email2@email.com", address: "234 Address St")
@subscription_1 = Subscription.create!(title: "Subscription 1", price: "11.99", status: 0, frequency: 0, customer_id: @customer_1.id, tea_id: @tea.id)
@subscription_2 = Subscription.create!(title: "Subscription 2", price: "12.99", status: 1, frequency: 1, customer_id: @customer_1.id, tea_id: @tea.id)
@subscription_3 = Subscription.create!(title: "Subscription 3", price: "13.99", status: 0, frequency: 2, customer_id: @customer_2.id, tea_id: @tea.id)
