#
# Be sure to run `pod lib lint Node.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Node'
  s.version          = '0.0.1'
  s.summary          = 'mimik Node library'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
mimik Node empowers developers to discover, connect, and communicate with various heterogeneous devices.
                       DESC

  s.homepage         = 'https://www.mimik.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mo Afrasiabi' => 'mo.afrasiabi@mimik.com' }
  s.source           = { :git => 'https://github.com/mimikpods/Node.git', :tag => '0.0.1' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.vendored_frameworks = 'Frameworks/Node.framework'

  s.dependency 'Beam', '~> 0.0.1'
  s.dependency 'Drive', '~> 0.0.1'
  s.dependency 'Edge', '~> 0.0.1'

end
