require 'open-uri' # standard library

def rescue_ensure
  io = open('/tmp')
  raise "Some error"
ensure
  puts "IO closed in any case"
  io.close if io.nil?
end

rescue_ensure
