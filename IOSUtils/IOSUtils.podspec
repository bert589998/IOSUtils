Pod::Spec.new do |s|
s.name         = "IOSUtils"
s.version      = "0.0.1"
s.summary      = ""
s.homepage     = "https://github.com/bert589998/IOSUtils"
s.license      = "MIT"
s.author       = { "bert589998" => "email@address.com" }
s.platform     = :ios, '8.0'
s.source       = { :git => "https://github.com/bert589998/IOSUtils.git", :tag => s.version }
s.requires_arc = true
s.source_files = "IOSUtils”,“IOSUtils/IOSUtils/extension/*.{h,m}”
end
