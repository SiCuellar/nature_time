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

    it 'can return campsites to a specific park' do 
        campsites_list = NpsService.new.get_campsites("Grand Canyon")

        # binding.pry
        expect(campsites_list).to be_a(Hash)
        expect(campsites_list[:data][0]).to have_key(:campsites)
        expect(campsites_list[:data][0]).to have_key(:accessibility)
        expect(campsites_list[:data][0]).to have_key(:directionsoverview)
        expect(campsites_list[:data][0]).to have_key(:name)
        expect(campsites_list[:data][0]).to have_key(:latLong)
        expect(campsites_list[:data][0]).to have_key(:description)
        expect(campsites_list[:data][0]).to have_key(:parkCode)
        expect(campsites_list[:data][0]).to have_key(:id)
    end

    it 'can return visitor centers for a specific park' do
        visitor_centers = NpsService.new.get_visitor_centers("Grand Canyon")

        expect(visitor_centers).to be_a(Hash)

    
    end
end 