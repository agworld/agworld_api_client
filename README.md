Using JsonApiClient to test Agword API return with jsonapi format on hackathon.

#Reference
Jsonapi: http://jsonapi.org/
JsonApiClient: https://github.com/chingor13/json_api_client

#Testing Modules
- Company
- Property
- Paddock
- Paddock Summary
- Planned Season
- Activity
- Product


#Example Module

``` Ruby
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
```


#Basic Example
  ``` Ruby
  # Find company by id GET request /companies/5313
  MyApi::Company.find(5313)
  
  # Filtering company  by company type  GET request /companies?filter[company_type]=Consultant
  MyApi::Company.where(company_type: 'Consultant').all
  
  # Include property as relationship with paddock GET request /paddocks/111564?includes=property
  MyApi::Paddock.includes(:property).find(111564)
  
  # Pagination in paddock model GET request /paddocks?page=2&per_page=5
  MyApi::Paddock.page(2).per(5).to_a
  
  
  ```
