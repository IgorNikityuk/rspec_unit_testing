require 'spec_helper'
require 'support/car'

describe Car do

	before :each do
		@car = Car.new
	end

	it "should have 4 wheels" do
		expect(@car.wheels_count).to eq 4
	end

	it "should have 6 glasses" do
		expect(@car.glass_count).to eq 6
	end
	
	it "should have ability to work with mocks" do
		@car.stub(:go).and_return 10
		expect(@car.go(1,3)).to eq 10
	end

	it "go should set correct x and y" do
		@car.go(1,5)
		expect(@car.locate_point_x).to eq 1
		expect(@car.locate_point_y).to eq 5
	end

	it "go_to_default should set 0 for x and y"  do
		@car.go(12,50)
		@car.go_to_default
		expect(@car.locate_point_x).to eq 0
		expect(@car.locate_point_y).to eq 0
	end




end