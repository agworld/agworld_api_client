module AgworldApi
  module Query
    class AdditionalParamBuilder < ::JsonApiClient::Query::Builder
      attr_reader :additional_params

      def initialize(klass)
        @additional_params = {}
        super(klass)
      end

      alias_method :orig_params, :params
      def params
        orig_params.merge(@additional_params)
      end

      def with_params(more_params)
        @additional_params = more_params
        self
      end
    end
  end
end
