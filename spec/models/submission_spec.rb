require 'rails_helper'

RSpec.describe Submission, type: :model do
	context 'validation tests' do
	    it 'ensures first name presence' do
	      subm = Submission.new(last_name: 'Last', email: 'sample@example.com').save
	      expect(subm).to eq(false)
	    end
	    it 'ensures last name presence' do
	      subm = Submission.new(first_name: 'first', email: 'sample@example.com').save
	      expect(subm).to eq(false)
	    end

	    it 'ensures slogan presence' do
	      subm = Submission.new(first_name: 'first', email: 'sample@example.com').save
	      expect(subm).to eq(false)
	    end

	    it 'ensures email format' do
	      subm = Submission.new(first_name: 'first', email: 'sample@example.com')
	      expect(subm.email).to match(/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i)
	    end	    

	    it 'ensures slogan at least 50 characters' do
	      subm = Submission.new(slogan: 'a'*50)	      
	      expect(subm.slogan.length).to be >= 50
	    end

	    it 'should save sucessfully' do
	    	subm = Submission.new(first_name: 'first', last_name: 'last', email: 'sample@example.com', slogan: 'a'*50).save
	    	expect(subm).to eq(true)
	    end

	end
end
