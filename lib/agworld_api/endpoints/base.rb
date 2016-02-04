module AgworldApi
  module Endpoints
    class Base < JsonApiClient::Resource
      class << self
        extend Forwardable
        def_delegators :_new_scope, :with_params
      end

      self.query_builder = AgworldApi::Query::AdditionalParamBuilder
    end
  end
end
