require "json_api_client"

module MyApi
  # this is an "abstract" base class that
  class Base < JsonApiClient::Resource
    # set the api base url in an abstract base class
    self.site = "http://localhost:3000/public_api/"
  end

  class Company < Base
  end

  class Property < Base
  end

  class Paddock < Base
  end
end