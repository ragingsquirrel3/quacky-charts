require 'spec_helper'

describe "Quacky::LineGraphBuilder" do
  
  it "can be initialized to the correct type" do
    graph = Quacky::LineGraphBuilder.new
    graph.class.should eq(Quacky::LineGraphBuilder)
  end
  
  it "should be able to initialize itself with a hash array of time series data" do
    example_data = [
      { Time.now =>  50 },
      { Time.now + 1 => 75 }
    ]
    graph = Quacky::LineGraphBuilder.new(example_data)
  end
  
  it "should output its time series data in a Rickshaw-accepted format" do
    example_data = [
      { Time.now =>  50 },
      { Time.now + 1 => 75 }
    ]
    
    expected_output = example_data.to_json
    graph = Quacky::LineGraphBuilder.new(example_data)
    
  end
  
end
