require 'rails_helper'

RSpec.describe Actor, type: :model do

    it 'valid name,year and email' do
        actor = Actor.new
        actor.name = "test"
        actor.year = 1999
        actor.email = 'test@email.com'
        expect(actor).to be_valid
    end

    it 'Invalid input - existing email' do
        actor1 = Actor.new
        actor1.email = "email@email.com"
        actor1.save
        
        actor2 = Actor.new
        actor2.email = "eeemail@email.com"
        actor2.save

        expect(actor2).to_not be_valid
        
        end    
    end

end