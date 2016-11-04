#
# Be sure to run `pod lib lint PLCameraStreamingKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PLMediaStreamingKit"
  s.version          = "2.1.4"
  s.summary          = "Pili iOS media streaming framework via RTMP."
  s.homepage         = "https://github.com/pili-engineering/PLMediaStreamingKit"
  s.license          = 'Apache License, Version 2.0'
  s.author           = { "hzwangsiyu" => "hzwangsiyu@gmail.com" }
  s.source           = { :git => "https://github.com/pili-engineering/PLMediaStreamingKit.git", :tag => "v#{s.version}" }

  s.platform     = :ios
  s.ios.deployment_target = '7.0'

  s.requires_arc = true  
 
  s.dependency 'pili-librtmp', '1.0.5'
  s.dependency 'HappyDNS', '~> 0.3.0'
  s.dependency 'QNNetDiag'
  s.frameworks = ['UIKit', 'AVFoundation', 'CoreGraphics', 'CFNetwork', 'AudioToolbox', 'CoreMedia', 'VideoToolbox']
  s.libraries = 'z', 'c++', 'icucore', 'sqlite3'
  s.vendored_libraries = 'Pod/Library/*.a'

  s.subspec "PLCameraStreamingKit" do |ss1|
    ss1.public_header_files = 'Pod/Library/include/PLCameraStreamingKit/*.h'
    ss1.source_files = 'Pod/Library/include/PLCameraStreamingKit/*.h'
  end

  s.subspec "PLStreamingKit" do |ss2|
    ss2.public_header_files = 'Pod/Library/include/PLStreamingKit/*.h'
    ss2.source_files = 'Pod/Library/include/PLStreamingKit/*.h'
  end

  s.subspec "PLRTCStreamingKit" do |ss3|
    ss3.public_header_files = 'Pod/Library/include/PLRTCStreamingKit/*.h'
    ss3.source_files = 'Pod/Library/include/PLRTCStreamingKit/*.h'
  end

  s.subspec "PLMediaStreamingKit" do |ss4|
    ss4.public_header_files = 'Pod/Library/include/PLMediaStreamingKit/*.h'
    ss4.source_files = 'Pod/Library/include/PLMediaStreamingKit/*.h'
  end

  s.subspec "Common" do |ss5|
    ss5.public_header_files = 'Pod/Library/include/Common/*.h'
    ss5.source_files = 'Pod/Library/include/Common/*.h'
  end
end
