require 'spec_helper'

module Codebreaker
    describe Game do
        describe "#start" do
            it "sends welcome message" do
                output = double('output').as_null_object
                game = Game.new(output)

                output.should_receive(:puts).with('Welcome to Codebreaker!')

                game.start
            end

            it "prompts for the first guess" do
                output = double('output').as_null_object
                game = Game.new(output)

                output.should_receive(:puts).with('Enter Guess:')

                game.start
            end
        end
    end
end
