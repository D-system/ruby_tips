def raiser
  raise "an error"
end

msg = raiser rescue "inline rescue catch any exception and return the value (here this explanation)"
puts msg