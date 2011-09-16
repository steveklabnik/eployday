require 'eployday/deploy'

describe Eployday::Deploy do
  context "is a Cinch Plugin" do
    it "mixes in the right module" do
      Eployday::Deploy.ancestors.include?(Cinch::Plugin).should be_true
    end

    it "executes a deploy" do
      Kernel.should_receive(:system).with("sm deploy")
      message = stub(:reply => nil, :user => stub(:nick => "steve"))
      Eployday::Deploy.new(stub.as_null_object).execute(message)
    end
  end
end
