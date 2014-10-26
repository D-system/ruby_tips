module FontainInclude
  def instance_method
    puts "inside instance_method"
  end

  def self.included(klass)
    klass.extend FontainExtend
  end

  module FontainExtend
    def class_method
      puts "inside class_method"
    end
  end
end

class Fontain
  include FontainInclude
end

Fontain.class_method
Fontain.new.instance_method
