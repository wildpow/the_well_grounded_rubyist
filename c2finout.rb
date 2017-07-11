print "Hello there. Please enter the name of the
        file containing Celsius data "
input = gets.chomp.to_s
puts "Reading file '#{input}'..."
celsius = File.read(input).to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Celsius info from file: #{celsius}"
puts "fahrenheit convertion: #{fahrenheit}"
print "Please enter a file name for fahrenheit convertion data: "
input = gets.chomp.to_s
puts "Writing to file '#{input}'..."
file = File.new(input, "w")
file.puts fahrenheit
file.close
puts "writing to file complete"
