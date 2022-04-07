#
# Be sure to run `pod lib lint ClearentIdtechIOSFrameworkPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ClearentIdtechIOSFrameworkPod'
    s.version          = '2.0.13.xc5'
    s.summary          = 'Clearent IOS Framework supporting IDTech credit card reader.'
    s.description  = <<-DESC
    This framework lets your app avoid handling credit card data by connecting to a supported IDTech credit card reader and sending the card data to Clearent for processing.
    DESC

    s.homepage         = 'http://api.clearent.com/swagger.html#!/Quest_API_Integration/Mobile_Transactions_using_SDKs'
    s.license          = { :type => 'APACHE', :file => 'LICENSE' }
    s.author           = { 'davidHigginbotham' => 'dhigginbotham@clearent.com' }
    s.source           = { :git => 'https://github.com/clearent/ClearentIdtechIOSFrameworkPod_xc.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.vendored_frameworks = 'ClearentIdtechIOSFrameworkPod/IDTech.framework','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.xcframework'

    s.resource_bundles = {
        'ClearentIdtechIOSFrameworkPod' => ['ClearentIdtechIOSFrameworkPod/IDTech.bundle']
    }

    s.frameworks = 'CFNetwork', 'AudioToolbox','AVFoundation','MediaPlayer','ExternalAccessory'

    s.preserve_paths ='ClearentIdtechIOSFrameworkPod/IDTech.framework','ClearentIdtechIOSFrameworkPod/IDTech.bundle'

    s.requires_arc = true

end
