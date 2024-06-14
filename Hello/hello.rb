class HelloWorld

    def initialize rubyJoice
        @rubyJoice = rubyJoice
    end

    def say_hello
        puts "Hello World of Ruby! #{@rubyJoice}!"
    end
end

hello_world = HelloWorld.new "Joice Paz"

hello_world.say_hello