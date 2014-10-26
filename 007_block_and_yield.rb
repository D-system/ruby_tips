def yield_block
  yield "yield_block"
end

yield_block { puts "inline block without parameter (ignored)" }
yield_block do |str|
  puts "multiple lines block with parameter: #{str}"
end
