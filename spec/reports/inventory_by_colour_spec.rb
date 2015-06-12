require 'spec_helper'
describe Reports::InventoryByColour do
	it "should return inventory of black clothes as 40" do
		department = FactoryGirl.build(:procurement_department, inventory: 40, categories: {"colour" => "black"})
		inventory_report = FactoryGirl.build(:inventory_by_colour, colour: "black")
		expect(inventory_report.generate_report(department)).to eq(40)
	end

	it "should return inventory of white clothes as 0" do
		department = FactoryGirl.build(:procurement_department, inventory: 40, categories: {"colour" => "white"})
		inventory_report = FactoryGirl.build(:inventory_by_colour, colour: "black")
		expect(inventory_report.generate_report(department)).to eq(0)
	end

end