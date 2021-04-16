#
# Be sure to run `pod lib lint MJKNetworking.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MJKNetworking'
# 默认版本号
  s.version          = '0.1.4'
# summary 需要修改后边的描述信息
  s.summary          = '这个库 MJKNetworking 的作用就是用来ddee的'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
# TODO 日志标签，需要修改
TODO: Add long description of the pod here.
这个是个标签必须添加，否则语法上会报错.
                       DESC

# 主页
  s.homepage         = 'https://github.com/MaJiankui/MJKNetworking'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MaJiankui' => '1723062635@qq.com' }
# source 路径
  s.source           = { :git => 'https://github.com/MaJiankui/MJKNetworking.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MJKNetworking/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MJKNetworking' => ['MJKNetworking/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
#尝试引入第三方依赖库
  # s.dependency 'AFNetworking', '~> 2.3'
end
