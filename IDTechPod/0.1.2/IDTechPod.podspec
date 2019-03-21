#
# Be sure to run `pod lib lint IDTechPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDTechPod'
  s.version          = '0.1.2'
  s.summary          = 'IDTech framework for supporting reader with the common kernel version 1.'
  s.description      = <<-DESC
Do not expose this as a public pod. This is for internal use only. We are going to reference this pod in our framework pod.
                       DESC

  s.homepage         = 'http://api.clearent.com/swagger.html#!/Quest_API_Integration/Mobile_Transactions_using_SDKs'
 
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'davidHigginbotham' => 'dhigginbotham@clearent.com' }
  s.source           = { :git => 'https://github.com/clearent/IDTechPod.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '8.0'

  s.source_files = 'IDTechPod/IDTech.framework/Versions/A/Headers/*.{h}'
  
  s.public_header_files = 'IDTechPod/IDTech.framework/Versions/A/Headers/*.{h}'
  
  s.resource_bundles = {
    'IDTechPod' => ['IDTechPod/IDTech.bundle']
  }
  
  s.frameworks = 'CFNetwork', 'AudioToolbox','AVFoundation','MediaPlayer','ExternalAccessory'
  
  s.preserve_paths = 'IDTechPod/IDTech.framework','IDTechPod/IDTech.bundle'
end
