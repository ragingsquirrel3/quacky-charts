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
    first_time = Time.now
    second_time =  Time.now + 1
    example_data = [
      { time: first_time, data: 50 },
      { time: second_time, data: 75 }
    ]
    
    expected_output = [
      { x: first_time.to_i, y: 50 },
      { x: second_time.to_i, y: 75 }
    ].to_json
    
    graph = Quacky::LineGraphBuilder.new(example_data)
    graph.get_data.should eq(expected_output)
  end
  
end
