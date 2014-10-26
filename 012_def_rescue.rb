def raising_method
  raise StandardError.new "Oops"
rescue StandardError => e
  puts "rescue can be use around a method declaration: #{e.to_s}"
end

raising_method
