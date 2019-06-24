class Park 
    attr_reader :states,
                :description,
                :designation,
                :latLong,
                :park_code,
                :id,
                :directionsInfo,
                :directionsUrl,
                :fullname,
                :url,
                :weatherInfo,
                :name
    
    def initialize(data)
        @states = data[:states]
        @latLong = data[:latLong]
        @description = data[:description]
        @designation = data[:designation]
        @park_code = data[:parkCode]
        @id = data[:id]
        @directionsInfo = data[:directionsInfo]
        @directionsUrl = data[:directionsUrl]
        @fullName = data[:fullName]
        @url = data[:url]
        @weatherInfo = data[:weatherInfo]
        @name = data[:name]
        # binding.pry
    end 
end 