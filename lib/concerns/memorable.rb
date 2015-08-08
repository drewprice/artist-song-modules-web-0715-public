module Memorable
  module ClassMethods
    @@all = []

    def all
      @@all
    end

    def reset_all
      @@all.clear
    end

    def count
      @@all.count
    end

    def find_by_name(name)
      @@all.find { |e| e.name == name }
    end
  end

  # module InstanceMethods
  #   def initialize
  #     self.class.all << self
  #   end
  # end
end
