class String
  def red
    "\033[31m#{self}\033[0m"
  end
end

class Fixnum
  def +(ohter)
    42
  end
end

msg = <<-eos
        Monkey patch are useful in many cases but can be used in the wrong way (eg.: 1 + 1 = #{1 + 1}).
        It should never be used on external class.
eos

puts msg.red
