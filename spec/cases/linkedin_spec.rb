require 'helper'

describe OldLinkedIn do

  before(:each) do
    OldLinkedIn.token = nil
    OldLinkedIn.secret = nil
    OldLinkedIn.default_profile_fields = nil
  end

  it "should be able to set the consumer token and consumer secret" do
    OldLinkedIn.token  = 'consumer_token'
    OldLinkedIn.secret = 'consumer_secret'

    OldLinkedIn.token.should  == 'consumer_token'
    OldLinkedIn.secret.should == 'consumer_secret'
  end

  it "should be able to set the default profile fields" do
    OldLinkedIn.default_profile_fields = ['educations', 'positions']

    OldLinkedIn.default_profile_fields.should == ['educations', 'positions']
  end

  it "should be able to set the consumer token and consumer secret via a configure block" do
    OldLinkedIn.configure do |config|
      config.token  = 'consumer_token'
      config.secret = 'consumer_secret'
      config.default_profile_fields = ['educations', 'positions']
    end

    OldLinkedIn.token.should  == 'consumer_token'
    OldLinkedIn.secret.should == 'consumer_secret'
    OldLinkedIn.default_profile_fields.should == ['educations', 'positions']
  end

end
