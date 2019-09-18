
class Theater
  attr_accessor :admitted, :capacity

  def initialize(number_of_seats)
    @capacity = number_of_seats
    @admitted = 0
  end

  def admit!(patrons = 1)
    if @admitted + patrons > @capacity
      "Sorry! We're at capacity! Try again later."
    else
      @admitted += patrons
    end
  end

  def at_capacity?
    @admitted == @capacity
  end

  def record_walk_outs!(patrons = 1)
    @admitted -= patrons
  end
end

#*******************************************************************************
#creates new variable called apollo_theatre, and specifies that it has ten seats
#occupant number defaults to zero unless you admit patrons
apollo_theatre = Theater.new(10)

puts "The Apollo Theatre has #{apollo_theatre.capacity} seats."
puts "There are currently #{apollo_theatre.admitted} occupants in the theatre."

#*******************************************************************************
#adds ten patrons to the theatre
10.times do
  apollo_theatre.admit!
end

puts "Ten people have entered the theatre. There are currently #{apollo_theatre.admitted} occupants in the theatre."

#*******************************************************************************
#checks to see if we are at capacity. if patrons === capacity => true
puts "Is the theatre at capacity? #{apollo_theatre.at_capacity?}"

#*******************************************************************************
#attempting to admit 1 more while we are already at capacity.
puts "Can we add one more patron if we are at capacity? #{apollo_theatre.admit!}"

#*******************************************************************************
#3 occupants have left the teatre. Are we at capacity now?

3.times do
  apollo_theatre.record_walk_outs!
end

puts "Three people have left the theatre. There are currently #{apollo_theatre.admitted} occupants in the theatre."
puts "Is the theatre at capacity? #{apollo_theatre.at_capacity?}"
