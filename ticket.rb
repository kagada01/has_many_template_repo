class Ticket
  attr_reader :seller, :customer, :price, :place, :act

  @@all = []

  def initialize(price, seller, customer, place, act)
    @price, @seller, @customer, @place, @act = price, seller, customer, place, act
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_place(place)
    my_tickets = Ticket.all.select do |ticket|
      place == ticket.place
    end
      my_tickets.collect do |my_ticket|
        my_ticket.act
      end.uniq
  end
end
