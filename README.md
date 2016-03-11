# Agworld Api Client

## Background Information

### What is Agworld?
Agworld is a farm information management system used by Farmers, Agronomists, Retailers, Suppliers and Contractors. It is a cloud-based platform that helps improve the world of agriculture. See more at http://www.agworld.co/.

### Purpose of this Gem
This gem is an example of how you would use the [json_api_client](https://github.com/chingor13/json_api_client) gem which is itself a Ruby implemention of the [JSON Api](http://jsonapi.org) specification. Consider this a reference client that gets you started, but defer to [json_api_client](https://github.com/chingor13/json_api_client) and [JSON Api](http://jsonapi.org) as your requirements become more detailed.

### Links
* Agworld Api Documentation (v1) - https://us.agworld.co/user_api/v1/docs
* JSON Api Specification - http://jsonapi.org
* json_api_client - https://github.com/chingor13/json_api_client

## Getting started

### Installation

##### When Tinkering

    $ git clone git@github.com:agworld/agworld_api_client.git
    $ cd agworld_api_client
    $ bundle install
    $ bundle exec irb
    > require 'agworld_api'
    > ...

##### When Using Bundler

    gem 'agworld_api_client', '~> 0.1.0'

    # How to require when using it:
    require 'agworld_api'

##### Configuration

    > agworld_client = AgworldApi::Client.new(url: 'https://us.agworld.co/user_api/v1', api_token: 'secret_token')

You can generate an `api_token` on your user preferences page which can be accessed in Agworld after logging in via "Account Settings" (in the top right) -> "Account Settings - Edit". 

## Basic Usage

### Resources

The Agworld API is currently **Read Only**

Resources the API currently supports:

* Companies
* Farms (Properties)
* Fields (Paddocks)
* Seasons
* Activities

### Usage examples for Fields (Paddocks)

##### Fetching all records (paginated by default)

    > fields = agworld_client.fields.all
    [
        [0] #<AgworldApi::Endpoints::Field:@attributes={"id"=>"123",...}>,
        ...
    ]

##### Fetching a single record

    > field = agworld_client.fields.find(123).first
    #<AgworldApi::Endpoints::Field:@attributes={"id"=>"123",...

##### Fetching data while specifying the season in a parameter

    > fields = agworld_client.fields.with_params(season_id: 456).all
    [
        [0] #<AgworldApi::Endpoints::Field:@attributes={"id"=>"123",...}>,
        ...
    ]

##### Filtering

    > fields = agworld_client.fields.where(company_id: 789).all
    [
        [0] #<AgworldApi::Endpoints::Field:@attributes={"id"=>"123",...}>,
        ...
    ]

##### Sorting/Ordering

    > fields = agworld_client.fields.where(company_id: 789).order(created_at: :desc).all
    [
        [0] #<AgworldApi::Endpoints::Field:@attributes={"id"=>"111",...}>,
        ...
    ]

##### Sideloading a relationship (includes)

    # This makes a request to: /user_api/v1/fields?include=farm
    > fields = agworld_client.fields.includes(:farm).all

    # This doesn't make an additional request to the server:
    > farms = fields.map(&:farm)

##### Pagination

    > fields = agworld_client.fields.paginate(page: 2, per_page: 5).all
