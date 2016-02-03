module Agworld
  class Client
    attr_reader :url, :api_token

    def initialize(url: nil, api_token: nil)
      @url = url
      @api_token = api_token
      Agworld::Endpoints::Base.site = "#{url}?api_token=#{api_token}"
    end

    def company
      Agworld::Endpoints::Company
    end

    def farm
      Agworld::Endpoints::Farm
    end

    def field
      Agworld::Endpoints::Field
    end
  end
end
