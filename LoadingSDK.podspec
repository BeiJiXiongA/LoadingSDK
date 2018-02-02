Pod::Spec.new do |s|

  s.name         = "LoadingSDK"
  s.version      = "1.0.1"
  s.summary      = "A loading view."

  s.description  = <<-DESC
                      A loading view,show and hide.
                    DESC

  s.homepage     = "https://github.com/BeiJiXiongA/LoadingSDK"

  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "BeiJiXiongA" => "1101209228@qq.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/BeiJiXiongA/LoadingSDK.git", :tag => "1.0.1"}


  s.source_files  = "LoadingSDKFiles"
  #s.vendored_libraries = 'LoadingSDKFiles/SDKDemoA.a'
  #s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  #s.public_header_files = "Classes/**/*.h"

end
