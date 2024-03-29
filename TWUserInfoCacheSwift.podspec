#
# Be sure to run `pod lib lint TWUserInfoCacheSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TWUserInfoCacheSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TWUserInfoCacheSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'TWUserInfoCacheSwift is a data catch kit'

  s.homepage         = 'https://github.com/TiltWang/TWUserInfoCacheSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = 'MIT'
  s.author           = { 'tiltwang' => "wangxufeng092@163.com" }
  s.source           = { :git => 'https://github.com/TiltWang/TWUserInfoCacheSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.swift_version = '5.0'

  s.source_files = 'Example/TWUserInfoCacheSwift/Classes/**/*.swift'
  
  # s.resource_bundles = {
  #   'TWUserInfoCacheSwift' => ['TWUserInfoCacheSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
