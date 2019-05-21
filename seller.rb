require 'pry'

class Seller
  attr_reader :name, :total_tickets

  @@all = []

  def initialize(name, total_tickets)
    @name, @total_tickets = name, total_tickets
    @@all << self
  end

  def self.all
    @@all
  end

# {["Rio de Janeiro" => "The Police"], ["New York" => "Ball Drop"]}

  def find_tickets
    ticket_hash = {}
    my_tickets = Ticket.all.select do |ticket|
      ticket.seller == self
    end
      my_tickets.each do |my_ticket|
        if ticket_hash[my_ticket.place]
           ticket_hash[my_ticket.place] << my_ticket.act
        else
          ticket_hash[my_ticket.place] = [my_ticket.act]
        end
      end
      ticket_hash
  end


end
