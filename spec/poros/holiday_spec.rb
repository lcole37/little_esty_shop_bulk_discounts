require 'rspec'
require '././app/poros/holiday.rb'

RSpec.describe Class do

  before :each do
    @holiday = Holiday.new(name: "Name", date: "2022-10-10")
  end

	it "exists" do
		expect(@holiday).to be_a(Holiday)
	end

	it "has attributes" do
		expect(@holiday.name).to eq("Name")
		expect(@holiday.date).to eq("2022-10-10")
  end
end
