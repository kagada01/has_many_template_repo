class Customer
  attr_reader :name, :cash

  @@all = []

  def initialize(name, cash)
    @name, @cash = name, cash
    @@all << self
    @order_history = []
  end

  def self.all
    @@all
  end

  def find_tickets
    my_tickets = Ticket.all.select do |ticket|
      ticket.customer == self
    end
      my_tickets.collect do |ticket_name|
        ticket_name.customer.name
      end.uniq
  end


  def find_sellers
    my_tickets = Ticket.all.select do |ticket|
      ticket.customer == self
    end
      my_tickets.collect do |ticket_seller|
        ticket_seller.seller.name
      end.uniq
  end

  def buy_ticket(cash)
  # my_ticket = Ticket.all.select do |ticket|
  #     ticket
  #   end
  # #if self.cash > ticket.price
  #   #Ticket.new(X....)
  #   #User(cash) - price = new_balance
  #   #pushes Ticket object into self.order_history[]
  # #else
  #   #if not deny purchase w/message "Sorry, you're poor :("

  end

  def order_history
    #Returns an array with all tickets purchased by Self
  end

end
