require 'test_helper'

class AirportTest < ActiveSupport::TestCase
	def setup
		@airport = Airport.new(code: 'NYC')
	end

	test 'should be valid' do
		assert @airport.valid?
	end

	test 'validates code presence' do
		@airport.code = nil
		assert_not @airport.valid?
	end

	test 'code lenght should be less than 50' do
		@airport.code = 'C' * 51
		assert_not @airport.valid?
	end
end
