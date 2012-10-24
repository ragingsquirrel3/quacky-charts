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
  
  it "should be able to draw and raise error" do
    chart = Quacky::PieChartBuilder.new
    lambda {chart.draw}.should raise_error
  end
  
end
