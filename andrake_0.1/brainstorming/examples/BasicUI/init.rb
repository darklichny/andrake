#! /usr/bin/env ruby
require 'andrake'

Andrake.resources[:colors][:blue] = '#666'
# Andrake.resources.colors.blue = '#0000ff'

Andrake.resources do |res|

  res[:strings].merge!({
    :hello => 'Hello World from a Ruby Hash',
    :app_name => 'Basic UI'
  })

  res.colors :white  => '#ffffff',
             :red    => '#f00',
             :green  => '#f0f0',
             :yellow => '#ffffff00'
end

Andrake.resources[:strings][:externalized_string] = 'Externalized String'

Andrake.resources do |res|
  res.strings :externalized_string => 'overriden external string'
end
