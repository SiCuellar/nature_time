class NpsService
    def get_parks_by_state(state)
        get_json("/api/v1/parks?stateCode=#{state}&api_key=#{ENV[NPS_API_KEY]}")
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

    # https://developer.nps.gov/api/v1/parks?stateCode=CO&api_key=ryG7X4Cz5M7VvZMndK3eAIFp3FZIJV3mFaDuyv5L