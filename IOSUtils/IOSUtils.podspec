Pod::Spec.new do |s|
s.name         = "IOSUtils"
s.version      = "0.0.1"
s.summary     = "SwiftyJSON makes it easy to deal with JSON data in Swift"
s.homepage     = "https://github.com/bert589998/IOSUtils"
s.license      = "MIT"
s.ios.deployment_target = "8.0"
s.author             = { "bert589998" => "email@address.com" }
s.source       = { :git => "https://github.com/bert589998/IOSUtils.git", :tag => s.version }
s.source_files = "IOSUtils/IOSUtils/extension/*.swift"
s.requires_arc = true


end
