require 'spec_helper'

describe User do
  let(:user) { User.new }

  # Shoulda matcher
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }

  # valid_attribute
  it { should have_valid(:first_name).when("Eric", "Steve", "John") }
  it { should_not have_valid(:first_name).when(nil, "") }

  it { should have_valid(:last_name).when("Eric", "Steve", "John") }
  it { should_not have_valid(:last_name).when(nil, "") }

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
