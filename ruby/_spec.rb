require('./class.rb')
describe "Class" do
	before :each do
		@class = Class.new
	end

	it "should create an instance of class and properly initialize it" do
		@class.nil?.should == false
		@class.size.should == 0
		@class.instance_variable_get(:@list).nil?.should == false
	end
end
