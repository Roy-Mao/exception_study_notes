# Catch and Throw Syntax
=begin
def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  print "the value of res is :"
  print res
  throw :quitRequested if res == "!"
  return res	
end


catch  :quitRequested do 
  print "here enters the catch statement"
  name = promptAndGet("Name: ")
  print name
  age = promptAndGet("Age: ")
  print age
  sex = promptAndGet("Sex: ")
  print sex
  # ..
  # process information 
end

promptAndGet("name:")
=end

# Basic Syntax

=begin

begin 
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  file = STDIN
end

print file, "==", STDIN, "\n"

=end

=begin
begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  fname = "existant_file"
  retry
end
=end

# The syntax of raise
=begin
begin
  puts "I am the line before exception raised"
  raise "raise an exception"
  puts "I am the line after excption raised"
rescue
  puts "I am now in the rescue block"
end
puts "I am the line after begin-end block"
=end

# The example usage (not necessarily good) of Exception class alias
=begin
begin
  raise "This is an exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect  
end
=end

# Create your own error exception class

=begin
class FileSaveError < StandardError
  attr_reader :reason
  def initialize(reason)
    @reason = reason
  end  
end

File.open(path, "w") do |file|
  begin
    # Write out the data...
  rescue
    # Something went wrong
    raise FileSaveError.new($!)
  end  
end
=end






