require 'eployday/deploy'

describe Eployday::Deploy do
  context "is a Cinch Plugin" do
    it "mixes in the right module" do
      Eployday::Deploy.ancestors.include?(Cinch::Plugin).should be_true
    end

    context "execute" do
      let(:message) {
        message = stub(:reply => nil, :user => stub(:nick => "steve"))
      }

      it "executes a deploy" do
        Eployday::PermissionChecker.should_receive(:allowed?).and_return true
        Kernel.should_receive(:system).with("sm deploy")

        Eployday::Deploy.new(stub.as_null_object).execute(message)
      end

      it "respects the permissions checker" do
        Eployday::PermissionChecker.should_receive(:allowed?).and_return false
        Kernel.should_not_receive(:system)

        Eployday::Deploy.new(stub.as_null_object).execute(message)
      end
    end
  end
end
