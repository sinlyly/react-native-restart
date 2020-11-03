require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-restart"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "9.0", :tvos => "11.0" }
  s.source       = { :git => "https://github.com/avishayil/react-native-restart.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.homepage     = "https://github.com/avishayil/react-native-restart"

  s.dependency "React"
end
