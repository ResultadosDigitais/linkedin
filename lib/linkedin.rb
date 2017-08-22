require 'oauth'

module OldLinkedIn

  class << self
    attr_accessor :token, :secret, :default_profile_fields

    # config/initializers/linkedin.rb (for instance)
    #
    # ```ruby
    # OldLinkedIn.configure do |config|
    #   config.token = 'consumer_token'
    #   config.secret = 'consumer_secret'
    #   config.default_profile_fields = ['educations', 'positions']
    # end
    # ```
    # elsewhere
    #
    # ```ruby
    # client = OldLinkedIn::Client.new
    # ```
    def configure
      yield self
      true
    end
  end

  autoload :Api,     "old_linked_in/api"
  autoload :Client,  "old_linked_in/client"
  autoload :Mash,    "old_linked_in/mash"
  autoload :Errors,  "old_linked_in/errors"
  autoload :Helpers, "old_linked_in/helpers"
  autoload :Search,  "old_linked_in/search"
  autoload :Version, "old_linked_in/version"
end
