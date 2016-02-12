require 'json_api_client'

require 'agworld_api/endpoints/base'

# Require all the individual endpoints:
Dir[File.join(File.dirname(__FILE__), "/agworld_api/endpoints/*.rb")].each do |path|
  require path
end

require 'agworld_api/client'

module AgworldApi
end
