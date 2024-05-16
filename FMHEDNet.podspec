#
# Be sure to run `pod lib lint FMHEDNet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FMHEDNet'
  s.version          = '0.1.0'
  s.summary          = 'A short description of FMHEDNet.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/dexiong/FMHEDNet'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dexiong' => 'dexiong@staff.sina.com.cn' }
  s.source           = { :git => 'https://github.com/ifbear/FMHEDNet.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.requires_arc = true
  
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC -all_load',
    'ALWAYS_SEARCH_USER_PATHS' => 'YES',
    'HEADER_SEARCH_PATHS' => '$(inherited) $(PROJECT_DIR)/FMHEDNet/Classes/opencv2.framework/Versions/A/Headers',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/FMHEDNet/Classes/opencv2.framework'
   }

  s.source_files = 'FMHEDNet/Classes/**/*.{h,m,mm}'
  
  # s.resource_bundles = {
  #   'FMHEDNet' => ['FMHEDNet/Assets/*.png']
  # }
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.vendored_libraries = 'FMHEDNet/Classes/**/*.a'
  s.ios.public_header_files = 'FMHEDNet/Classes/**/*.{h}'
  s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'CoreVideo', 'UIKit', 'Foundation'
  s.libraries = 'stdc++', 'c++'
  s.vendored_frameworks = 'FMHEDNet/Classes/opencv2.framework'
  # s.dependency 'OpenCV', '2.4.9'
end
