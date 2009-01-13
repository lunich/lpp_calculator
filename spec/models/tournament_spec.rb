require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Tournament do
  before(:each) do
    @valid_attributes = {
      :name => "New tournament",
      :start => Time.now - 10.days,
      :end => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    t = Tournament.create(@valid_attributes)
    t.errors.size.should == 0
    t.valid?.should == true
    t.new_record?.should == false
  end

  it "should require name" do
    t = Tournament.create(@valid_attributes.merge(:name => nil))
    t.errors.on(:name).should_not be_nil
    t.valid?.should == false
  end

  it "should require start" do
    t = Tournament.create(@valid_attributes.merge(:start => nil))
    t.errors.on(:start).should_not be_nil
    t.valid?.should == false
  end
end
