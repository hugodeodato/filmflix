require 'rails_helper'

RSpec.describe Comment, type: :model do

    it 'there is no associated movie' do
        comment = Comment.new(movie: nil)
        comment.approveds = "adsf jkçl"
    
        expect(comment).to_not be_valid
    end

end