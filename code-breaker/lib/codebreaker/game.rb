module Codebreaker
    class Game
        def initialize(output)
            @output = output
        end

        def start(secret)
            @output.puts 'Welcome to Codebreaker!'
            @output.puts 'Enter Guess:'
        end
    end
end
