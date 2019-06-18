require 'rails_helper'

describe 'national_park_service service' do
    it 'can return a list of parks by state' do 
        parks_list = NpsService.new.get_parks_by_state("CO")

        expect(parks_list).to be_a(Hash)
    end 
end 