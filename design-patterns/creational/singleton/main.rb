require_relative './config/app-config'

#Simulating the use of config by multiple threads
threads = []

10.times do |i|
    threads << Thread.new do
        config = AppConfig.instance
        puts "Thread #{i}: API Key: #{config.api_key}, URL: #{config.service_url}, Max Threads: #{config.max_threads}"
    end
end

threads.each(&:join)
