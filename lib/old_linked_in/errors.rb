module OldLinkedIn
  module Errors
    class OldLinkedInError < StandardError
      attr_reader :data
      def initialize(data)
        @data = data
        super
      end
    end

    # Raised when a 401 response status code is received
    class UnauthorizedError      < OldLinkedInError; end

    # Raised when a 400 response status code is received
    class GeneralError           < OldLinkedInError; end

    # Raised when a 403 response status code is received
    class AccessDeniedError      < OldLinkedInError; end

    # Raised when a 404 response status code is received
    class NotFoundError          < OldLinkedInError; end

    # Raised when a 500 response status code is received
    class InformOldLinkedInError    < OldLinkedInError; end

    # Raised when a 502 or 503 response status code is received
    class UnavailableError       < OldLinkedInError; end
  end
end
