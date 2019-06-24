require 'rails_helper'

        
describe 'National Park maker' do
    it "can return a specific " do
        park_data = {:states=>"CO",
                :latLong=>"lat:38.03977546, long:-103.4266499",
                :description=>
                "Bent's Old Fort National Historic Site features a reconstructed 1840s adobe fur trading post on the mountain branch of the Santa Fe Trail where traders, trappers, travelers, and the Cheyenne and Arapaho tribes came together in peaceful terms for trade.  Today, living historians recreate the sights, sounds, and smells of the past with guided tours, demonstrations and special events.",
                :designation=>"National Historic Site",
                :parkCode=>"beol",
                :id=>"87F9EFC7-1951-4250-A367-644EC5C4E6A2",
                :directionsInfo=>
                "The park is accessed via U.S. Highway 50 and Highway 194. From La Junta, Colorado on U.S. Highway 50, take Colorado Highway 109 north 1 mile to Colorado Highway 194, then east on Colorado Highway 194 six miles to the fort. From Las Animas, Colorado, on U.S. Highway 50, take Colorado Highway 194 west 13 miles. Set your GPS to 35110 State Highway 194 E., La Junta, CO.",
                :directionsUrl=>"http://www.nps.gov/beol/planyourvisit/directions.htm",
                :fullName=>"Bent's Old Fort National Historic Site",
                :url=>"https://www.nps.gov/beol/index.htm",
                :weatherInfo=>
                "Summer temperatures are are often in the high 90s and low 100s. Weather is generally fair in the fall and spring. Winter temperatures can be below freezing. Most of the fort is unheated and does not have modern cooling systems, so dress accordingly.",
                :name=>"Bent's Old Fort"}

        park = Park.new(park_data)

        expect(park).to be_an_instance_of(Park)
        expect(park.states).to eq("CO")
        expect(park.latLong).to eq("lat:38.03977546, long:-103.4266499")
        expect(park.description).to eq("Bent's Old Fort National Historic Site features a reconstructed 1840s adobe fur trading post on the mountain branch of the Santa Fe Trail where traders, trappers, travelers, and the Cheyenne and Arapaho tribes came together in peaceful terms for trade.  Today, living historians recreate the sights, sounds, and smells of the past with guided tours, demonstrations and special events.")
        expect(park.designation).to eq("National Historic Site")
        expect(park.park_code).to eq("beol")
        expect(park.id).to eq("87F9EFC7-1951-4250-A367-644EC5C4E6A2")
        expect(park.directionsInfo).to eq("The park is accessed via U.S. Highway 50 and Highway 194. From La Junta, Colorado on U.S. Highway 50, take Colorado Highway 109 north 1 mile to Colorado Highway 194, then east on Colorado Highway 194 six miles to the fort. From Las Animas, Colorado, on U.S. Highway 50, take Colorado Highway 194 west 13 miles. Set your GPS to 35110 State Highway 194 E., La Junta, CO.")
        expect(park.name).to eq("Bent's Old Fort")
    end 
end