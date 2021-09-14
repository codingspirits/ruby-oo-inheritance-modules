require_relative './dance_module.rb'
require_relative './class_methods_module.rb'

class Kid
    include Dance
    
    attr_accessor :name

    def initialize(name)
        @name = name
    end

end

class Kids
    extend MetaDancing
end

class Kidz
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
  end

  buster = Kidz.new
  buster.jump
  // returns "Look how high I'm jumping!"
  buster.take_a_bow
  // returns "Thank you, thank you. It was a pleasure to dance for you all."