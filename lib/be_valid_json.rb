module CustomJsonMatchers
  
  class BeValidJson
    def initialize(expected)
      @expected = expected
    end
  
    def matches?(target)
      @target = target
      
      res = true

      begin
        JSON.parse(target)
      rescue JSON::ParserError => e
        res = false
      end

      res    
    end
  
    def failure_message_for_should
      "expected #{@target.inspect} to be valid JSON"
    end
  
    def failure_message_for_should_not
      "expected #{@target.inspect} not to be valid json"
    end
  end
  
  def be_valid_json
    BeValidJson.new(@expected)
  end
end

Spec::Runner.configure do |config|
  config.include(CustomJsonMatchers)
end
