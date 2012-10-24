require 'spec_helper'

describe "Quacky::PieChartBuilder" do
  
  it "can be initialized" do
    chart = Quacky::PieChartBuilder.new
    chart.should be_true
  end
  
  it "should be the correct type" do
    chart = Quacky::PieChartBuilder.new
    chart.class.should eq(Quacky::PieChartBuilder)
  end
  
  it "should have random data after initialization" do
    chart = Quacky::PieChartBuilder.new
    first_set = chart.get_data
    
    chart = Quacky::PieChartBuilder.new
    second_set = chart.get_data
    
    first_set.should_not eq(second_set)
  end
  
  it "should have specified data if passed as an initialization variable" do 
    example_data_set = [ { "label" => "one", "value" => 20 }, { "label" => "two", "value" => 50 } ]
    chart = Quacky::PieChartBuilder.new(example_data_set)
    chart.get_data.should eq(example_data_set)
  end
  
  it "should have one data point after adding one data point" do
    chart = Quacky::PieChartBuilder.new
    
    example_data_point = { "label" => "one", "value" => 20 }
    
    chart.add_data(example_data_point)
    chart.get_data.should eq( [ example_data_point ] )
  end
  
  it "should have two data points after adding two sequentially" do
    chart = Quacky::PieChartBuilder.new
    
    first_example_data_point = { "label" => "one", "value" => 20 }
    second_example_data_point = { "label" => "two", "value" => 50 }
    
    chart.add_data(first_example_data_point)
    chart.add_data(second_example_data_point)
    chart.get_data.should eq( [ first_example_data_point, second_example_data_point ] )
  end
  
  it "should be able to accept an array of data, rather than a hash" do
    chart = Quacky::PieChartBuilder.new
    
    first_example_data_point = { "label" => "one", "value" => 20 }
    second_example_data_point = { "label" => "two", "value" => 50 }
    
    chart.add_data( [ first_example_data_point, second_example_data_point ] )
    chart.get_data.should eq( [ first_example_data_point, second_example_data_point ] )
  end
  
  it "should clear and replace data if an array is added" do
    chart = Quacky::PieChartBuilder.new
    
    first_example_data_point = { "label" => "one", "value" => 20 }
    second_example_data_point = { "label" => "two", "value" => 50 }
    
    chart.add_data(first_example_data_point)
    chart.add_data( [ first_example_data_point, second_example_data_point ] )
    chart.get_data.should eq( [ first_example_data_point, second_example_data_point ] )
  end
  
  it "should be able to draw and raise error" do
    chart = Quacky::PieChartBuilder.new
    lambda {chart.draw}.should raise_error
  end
  
end
