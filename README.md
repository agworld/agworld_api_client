# agworld_api_client

Ruby bindings for the Agworld API (https://my.agworld.co) using the json_api_client gem.

# Links

[API Docs](https://my.agworld.com.au/docs/user_api/v1/docs)
[JSON Api Spec](http://jsonapi.org/)
[json_api_client](https://github.com/chingor13/json_api_client)

## Installation

    gem install agworld_api_client

Using bundler:

    gem 'agworld_api_client', '~> 0.1.0'

## Basic Usage

### Configuration

    agworld_client = AgworldApi::Client.new(url: 'https://my.agworld.com.au/user_api/v1', api_token: 'secret_token')

You can generate an `api_token` from your account settings page after you have logged in.

### Resources

The Agworld API is currently **Read Only**

Resources this API supports:

    http://localhost:3000/user_api/v1/docs#companies
    http://localhost:3000/user_api/v1/docs#farms
    http://localhost:3000/user_api/v1/docs#fields

### Fetching all records

    fields = agworld_client.fields.all

### Fetching a single record

    field = agworld_client.fields.find(1).first

### Sideloading a relationship

    field = agworld_client.fields.includes(:farm).find(1).first

### Pagination

    fields = agworld_client.fields.paginate(page: 1, per_page: 5).all
