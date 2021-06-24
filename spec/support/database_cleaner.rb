Rspec.configure do |config|

 #setup truncation cleaning strategy before test suite runs  
 
     config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)

    end
 #sets transaction strategy before each test
    config.before(:each) do
        DatabaseCleaner.strategy = :transaction
    end
 #start database cleaner gem before each test
    config.before(:each) do  
        DatabaseCleaner.start
    end
 #wipes database after each test
    config.after(:each) do
        DatabaseCleaner.clean  
    end
end