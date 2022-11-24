require 'rails_helper'

RSpec.describe Movie, type: :model do
    it 'valid wit title and year' do
        movie = Movie.new
        movie.title = "test"
        movie.year = 2000
        expect(movie).to be_valid
    end
end