require 'rails_helper'

describe 'national_park_service service' do
    it 'can return a list of parks by state' do 
        parks_list = NpsService.new.get_parks_by_state("CO")

        expect(parks_list).to be_a(Hash)
        expect(parks_list[:data]).to be_a(Array)
    end 

    it 'can return of parks with specific data for each park' do 
        parks_list = NpsService.new.get_parks_by_state("CO")

        parks_list[:data].each do |park|
            expect(park).to have_key(:states)
            expect(park).to have_key(:latLong)
            expect(park).to have_key(:description)
            expect(park).to have_key(:parkCode)
            expect(park).to have_key(:id)
            expect(park).to have_key(:directionsInfo)
            expect(park).to have_key(:directionsUrl)
            expect(park).to have_key(:fullName)
            expect(park).to have_key(:url)
            expect(park).to have_key(:weatherInfo)
            expect(park).to have_key(:name)
        end 
    end 
end 