class String
  def red; "\033[31m#{self}\033[0m" end
end

puts <<-eos

Only module can be include or extend.
"Extended" class can only access to "non-self" method on the class (not instantiated object).
"Included" class can only access to "non-self" method on instantiate object.


eos


class MainClass; end

module MainModule
  def non_self
    puts "MainModule non_self"
  end
  def self.selfie
    puts "MainModule self.selfie"
  end
end


begin
  class ExtendedClass
    extend MainClass                   # can only be a module
  end
rescue => e
  puts "#{e.to_s}: " + "can only extend a module".red
end

begin
  class IncludedClass
    include MainClass                  # can only be a module
  end
rescue => e
  puts "#{e.to_s}: " + "can only include a module".red
end



class ExtendedModule
  extend MainModule
end

ExtendedModule.non_self
begin
  ExtendedModule.selfie
rescue => e
  puts %Q/#{e.to_s}: / + %Q/"module self" method not accessessible with extend on class/.red
end

ex = ExtendedModule.new
begin
  ex.non_self
rescue => e
  puts %Q/#{e.to_s}: / + %Q/"module non-self" method not accessessible with extend on intance variable/.red
end
begin
  ex.selfie
rescue => e
  puts %Q/#{e.to_s}: / + %Q/"module self" method not accessessible with extend on instance variable/.red
end




class IncludedModule
  include MainModule
end

begin
  IncludedModule.non_self
rescue => e
  puts %Q/#{e.to_s}: / + %Q/can not access to "non-self" and "self" methods on included if not instentiate/.red
end
begin
  IncludedModule.selfie
rescue => e
  puts %Q/#{e.to_s}: / + %Q/can not access to "non-self" and "self" methods on included if not instentiate/.red
end

incl = IncludedModule.new
incl.non_self
begin
  incl.selfie
rescue => e
  puts %Q/#{e.to_s}: / + %Q/can not access to "self" method on included/.red
end
