class Bike
    attr_accessor :state
  
    def initialize(state = "Working")
      @state = state
    end
  
    def working?
      @state == "Working" ? true : false
    end
  
    def reports_broken
      @state = "Broken"
    end
  end