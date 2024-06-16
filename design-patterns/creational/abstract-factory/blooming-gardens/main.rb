require_relative 'factories/wedding/wedding_factory'
require_relative 'factories/birthday/birthday_factory'
require_relative 'factories/funeral/funeral_factory'
require_relative 'entities/client/client'

client1 = Client.new("Alice")
client2 = Client.new("Charlie")
client3 = Client.new("Alisson")


puts "Wedding Arrangement for Alice:"
client1.order_arrangement(WeddingFactory.new)

puts "\nBoth Birthday and Wedding Arrangement for Charlie:"
client2.order_arrangement(BirthdayFactory.new)
puts "\n"
client2.order_arrangement(WeddingFactory.new)

puts "\nFuneral Arrangement for Alisson:"
client3.order_arrangement(FuneralFactory.new)