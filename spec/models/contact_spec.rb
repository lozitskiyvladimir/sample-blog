require "spec_helper"


describe Contact do
  it { should validate_presence_of  :email }
    it { should validate_presence_of  :message }
end

# describe "something" do
#   it "does something" do
#
#   end
# end
