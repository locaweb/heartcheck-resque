module Heartcheck
  module Checks
    class Resque < Base
      def validate
        services.each do |service|
          begin
            quantity = failures_counter
            if quantity > service[:failures_limit].to_i
              append_error("#{quantity} failures")
            end
          rescue => e
            append_error(e.message)
          end
        end
      end

      private

      def failures_counter
        ::Resque::Failure.count
      end

      def custom_error(msg)
        @errors << "Resque failed! #{msg}"
      end
    end
  end
end
