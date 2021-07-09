#
# Be sure to run `pod lib lint SJAlivcBasicVideo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SJAlivcBasicVideo'
  s.version          = '0.1.4'
  s.summary          = '阿里播放器的基础UI'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
阿里播放器的基础UI,但是这里的是已经完全修改的基础UI，请谨慎集成
                       DESC

  s.homepage         = 'https://github.com/CoderSimpleSong/SJAlivcBasicVideo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'simpleSJ' => '83694281@qq.com' }
  s.source           = { :git => 'https://github.com/CoderSimpleSong/SJAlivcBasicVideo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.static_framework = true

  s.source_files =  'SJAlivcBasicVideo/Classes/**/*.{h,m,mm}'
    
  s.prefix_header_contents = '#import "AlivcMacro.h"','#import "AlivcImage.h"'

  s.resource_bundles = {
      'SJAlivcBasicVideo' => ['SJAlivcBasicVideo/Assets/AlivcImage_LongVideo/*.png','SJAlivcBasicVideo/Assets/AlivcImage_Player/*.png','SJAlivcBasicVideo/Assets/AlivcImage_TimeShift/*.png','SJAlivcBasicVideo/Assets/*.dat','SJAlivcBasicVideo/Classes/**/*.xib']
  }
  
  s.dependency 'SJAlivcCommon'
  s.dependency 'MJRefresh', '~> 3.1.15.7'
  s.dependency 'MRDLNA'

  s.dependency 'AliPlayerSDK_iOS', '5.4.1.2'
  #  s.dependency 'AliPlayerSDK_iOS_ARTP', '5.3.0'
   s.dependency 'AliPlayerSDK_iOS_ARTC', '5.4.1.2'
   s.dependency 'RtsSDK', '1.6.0'


end
