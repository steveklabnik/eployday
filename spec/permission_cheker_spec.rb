require 'eployday/permission_checker'

describe Eployday::PermissionChecker do
  it "loads the whitelist" do
    Eployday::PermissionChecker.should_receive(:load_whitelist).and_return([])
    Eployday::PermissionChecker.allowed?("steveklabnik")
  end

  it "allows people on the list" do
    Eployday::PermissionChecker.allowed?("imgood", ["imgood"]).should be_true
  end

  it "disallows people not on the list" do
    Eployday::PermissionChecker.allowed?("imnot", []).should_not be_true
  end
end
