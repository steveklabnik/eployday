require 'eployday/permission_checker'

describe Eployday::PermissionChecker do
  it "loads the whitelist" do
    Eployday::PermissionChecker.should_receive(:load_whitelist).and_return([])
    Eployday::PermissionChecker.allowed?(stub.as_null_object)
  end

  it "allows people on the list" do
    user = stub(:nick => "imgood", :authed? => true)
    Eployday::PermissionChecker.allowed?(user, ["imgood"]).should be_true
  end

  it "disallows people not on the list" do
    Eployday::PermissionChecker.allowed?(stub(:nick => "imnot"), []).should_not be_true
  end

  it "ensures that the nick is registered" do
    authed_user = stub(:nick => "nick", :authed? => true)
    unauthed_user = stub(:nick => "nick", :authed? => false)
    whitelist = ["nick"]
    Eployday::PermissionChecker.allowed?(  authed_user, whitelist).should be_true
    Eployday::PermissionChecker.allowed?(unauthed_user, whitelist).should_not be_true
  end
end
