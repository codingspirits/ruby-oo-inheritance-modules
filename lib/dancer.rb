require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

class Dancer 
    include Dance

    attr_accessor :name
    def initialize(name)
        @name = name 
    end 

end 

class Dancers
    extend MetaDancing
end

class Dancerz
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods
  end
  
  angelina = Dancerz.new
  angelina.twirl
  // returns "I'm twirling!"
  angelina.jump
  // returns "Look how high I'm jumping!"
  Dancerz.metadata