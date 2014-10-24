h1 = {}
begin
  h1[:type] += 1
rescue => e
  puts "#{e.to_s} : use {} short for Hash"
end
puts h1[:type]


h2 = Hash.new(0)                # 0 is the default value
h2[:type] += 1
puts h2[:type]


h3 = Hash.new("")               # empty string is the default value
h3[:christmas] += "Ohohoh"
puts h3[:christmas]
