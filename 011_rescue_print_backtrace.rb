def a; raise "Boom"; end
def b; a; end
def c; b; end

begin
  c
rescue => e
  puts e.backtrace.join("\n")
end