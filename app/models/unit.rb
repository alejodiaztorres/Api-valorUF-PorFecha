class Unit < ApplicationRecord
    def self.get_uf_value_by_date(date)
        response = HTTParty.get("http://mindicador.cl/api/uf/#{date}")
        parsed_response = JSON.parse(response.body)
        parsed_response['serie'][0]['valor']
    end
end
