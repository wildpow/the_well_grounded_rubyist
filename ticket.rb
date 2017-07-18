ticket = Object.new

def ticket.date
  "01/02/03"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Auther's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row j, seat 12"
end

def ticket.price
  5.50
end

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}, on #{ticket.date}."
puts "The performer is #{ticket.performer}."
puts "The seat is #{ticket.seat}, and it costs $" + "%.2f." % ticket.price

while true
  print "What would you like to look up?(price, seat, performer, event, venue, date) "
  request = gets.chomp
  break if request == "quit"

  if ticket.respond_to?(request)
    puts ticket.send(request)
  else
    puts "No information on that request."
  end
end
