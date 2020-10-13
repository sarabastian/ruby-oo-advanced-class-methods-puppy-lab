require 'pry'

class Dog

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def save
    @@all << self
    end
    
    def self.print_all
        Dog.all.map do |dog|
        puts dog.name
        end
    end

  


end

hank = Dog.new("hank")
joey = Dog.new("joey")