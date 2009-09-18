require File.join(File.dirname(__FILE__), 'spec_helper')

describe CustomJsonMatchers::BeValidJson do
  it "should detect valid json" do
    "foo".should_not be_valid_json
  end
  
  it "should detect invalid json" do
    {:a => :b}.to_json.should be_valid_json
  end
end