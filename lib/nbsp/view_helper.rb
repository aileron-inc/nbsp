module Nbsp
  module ViewHelper
    def nbsp(number = 1)
      ActiveSupport::SafeBuffer.new('&nbsp;' * number)
    end
  end
end
