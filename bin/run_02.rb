require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)


result = {}

  parks.each do |park|

    value = park[:country]
    result[value] ||= []
    result[value] << park

  end

pp result
