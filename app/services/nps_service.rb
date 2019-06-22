class NpsService
    def get_parks_by_state(state)
        get_json("/api/v1/parks?stateCode=#{state}&api_key=#{ENV["NPS_API_KEY"]}")
    end 

    def get_campsites(park)
        get_json("/api/v1/campgrounds?q=#{park}&api_key=#{ENV["NPS_API_KEY"]}")
    end 

    def get_visitor_centers(park)
        get_json("/api/v1/visitorcenters?q=#{park}&api_key=#{ENV["NPS_API_KEY"]}")
    end 

    private 
    
    def get_json(path)
        response = conn.get(path)
        JSON.parse(response.body, symbolize_names: true)
    end 

    def conn 
        @conn = Faraday.new(url: "https://developer.nps.gov") do |faraday|
            faraday.adapter Faraday.default_adapter
        end 
    end 
end 

