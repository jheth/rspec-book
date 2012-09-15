require 'spec_helper'

module Codebreaker
    describe Game do
        before(:each) do
            @output = double('output').as_null_object
            @game = Game.new(@output)
        end

        describe "#start" do
            it "sends welcome message" do
                @output.should_receive(:puts).with('Welcome to Codebreaker!')
                @game.start
            end

            it "prompts for the first guess" do
                @output.should_receive(:puts).with('Enter Guess:')
                @game.start
            end
        end
    end
end
