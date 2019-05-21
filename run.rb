require_relative './customer.rb'
require_relative './seller.rb'
require_relative './ticket.rb'
require 'pry'

customer1 = Customer.new("Natany", 150)
customer2 = Customer.new("Dan", 20)
customer3 = Customer.new("Will", 1000)

seller1 = Seller.new("Seller 1", 5)
seller2 = Seller.new("Seller 2", 25)
seller3 = Seller.new("Seller 3", 50)

ticket1 = Ticket.new(10, seller1, customer1, "Washington", "Jay-Z")
ticket2 = Ticket.new(50, seller2, customer2, "Brasilia", "Djavan")
ticket3 = Ticket.new(100, seller1, customer3, "Rio de Janeiro", "The Police")
ticket4 = Ticket.new(0, seller3, customer3, "New York", "Ball Drop")
ticket5 = Ticket.new(20, seller3, customer3, "New York", "Hamilton")
Pry.start
