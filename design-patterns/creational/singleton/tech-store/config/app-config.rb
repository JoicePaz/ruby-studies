require 'thread'

class AppConfig
    def initialize
        @api_key = "12345"
        @service_url = "https://api.techstore.com"
        @max_threads = 10
    end

    private_class_method :new
    @instance_mutex = Mutex.new #Class that implements a mutual exclusion blocking mechanism 

    def self.instance
        return @instance if @instance

        @instance_mutex.synchronize do
            @instance ||= new 
        end
        @instance
    end
    
    attr_accessor :api_key, :service_url, :max_threads
end