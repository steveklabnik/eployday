require 'eployday/cli'

describe Eployday::CLI do
  it "runs a cinch bot" do
    bot = double
    bot.should_receive(:start)
    Cinch::Bot.stub(:new => bot)
    subject.run
  end
end
