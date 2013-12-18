require 'spec_helper'

#####################################################################
#
# Don't write your validation tests 3 different ways.
# Choose manually, with shoulda, or with valid_attribute.
# Not all three.
# Don't do it three different ways.
#
#####################################################################

describe User do
  let(:user) { User.new }

  # Shoulda matcher way
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }

  # valid_attribute way
  it { should have_valid(:first_name).when("Eric", "Steve", "John") }
  it { should_not have_valid(:first_name).when(nil, "") }

  it { should have_valid(:last_name).when("Kelly", "Danko", "Watson") }
  it { should_not have_valid(:last_name).when(nil, "") }

  # The manual way
  describe "validations" do
    it "requires first_name" do
      user.first_name = nil
      user.valid?
      expect(user.errors[:first_name]).to include "can't be blank"
    end

    it "requires last_name" do
      user.last_name = nil
      user.valid?
      expect(user.errors[:last_name]).to include "can't be blank"
    end
  end
end
