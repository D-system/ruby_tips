# See all default exception and hierarchy
# http://apidock.com/ruby/Exception

def raising_error
  begin
    yield
  rescue ArgumentError => expection_1
    puts "Rescue from ArgumentError: #{expection_1}"
  rescue SecurityError => expection_2
    puts "Rescue from SecurityError: #{expection_2}"
  rescue => expection_3
    puts "Rescue any exception. Should not be used, it's hiding errors. #{expection_3}"
  else
    puts 'Run if no exception raised'
  ensure
    puts 'This line always run', ''
  end
end

raising_error { puts "No error raised" }
raising_error { raise ArgumentError.new "ArgumentError ramdom message" }
raising_error { raise SecurityError.new "SecurityError ramdom message" }
raising_error { raise StandardError.new "StandartError ramdom message" }
raising_error { raise "Not typed error" }
