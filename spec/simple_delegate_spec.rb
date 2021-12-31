require "spec_helper"

class SampleClass1
  include SimpleDelegate

  delegate :method1, :method2, :method3, to_instance_variable: :object

  def initialize
    @object = SampleClass2.new
  end
end

class SampleClass2
  def method1
    "method1"
  end

  def method2
    "method2"
  end

  def method3(arg1, first_name:)
    "method3 #{arg1} first name: #{first_name}"
  end
end

class DelegateToMethods
  include SimpleDelegate

  delegate :method1, :method2, to: :spawn_object

  def spawn_object
    @object = SampleClass2.new
  end
end

describe "SimpleDelegate" do
  it "delegates" do
    sample = SampleClass1.new
    expect(sample.method1).to eq "method1"
    expect(sample.method2).to eq "method2"
  end

  it "delegates to methods" do
    sample = DelegateToMethods.new
    expect(sample.method1).to eq "method1"
    expect(sample.method2).to eq "method2"
  end

  it "delegates arguments and options" do
    sample = SampleClass1.new
    expect(sample.method3("test", first_name: "Kasper")).to eq "method3 test first name: Kasper"
  end
end
