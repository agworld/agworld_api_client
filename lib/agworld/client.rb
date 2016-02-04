module Agworld
  class Client
    attr_reader :url, :api_token

    def initialize(url: nil, api_token: nil)
      @url = url
      @api_token = api_token
      Agworld::Endpoints::Base.site = "#{url}?api_token=#{api_token}"
    end

    def companies
      Agworld::Endpoints::Company
    end

    def farms
      Agworld::Endpoints::Farm
    end

    def fields
      Agworld::Endpoints::Field
    end

    def seasons
      Agworld::Endpoints::Season
    end

    def activities
      Agworld::Endpoints::Activity
    end
  end
end
