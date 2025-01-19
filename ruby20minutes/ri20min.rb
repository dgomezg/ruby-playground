#!usr/bin/env ruby

class MegaGreeter
    attr_accessor :names

    def initialize(names = "World")
        @names = names
    end

    #say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    #say bye to everybody
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}. See you soon."
        else
            puts "Goodbye #{@names}! See you soon!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    #Change Name to be "Zeke"
    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    #Change Names to be an array of names
    mg.names = ["Calisto", "Europa", "IO"]
    mg.say_hi
    mg.say_bye

    #Change names to be nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
end