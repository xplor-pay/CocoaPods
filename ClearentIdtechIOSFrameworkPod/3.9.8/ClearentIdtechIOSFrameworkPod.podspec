#
# Be sure to run `pod lib lint ClearentIdtechIOSFrameworkPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ClearentIdtechIOSFrameworkPod'
    s.version          = '3.9.8'
    s.summary          = 'Clearent IOS Framework supporting IDTech credit card reader.'
    s.description  = <<-DESC
    This framework lets your app avoid handling credit card data by connecting to a supported IDTech credit card reader and sending the card data to Clearent for processing.
    DESC

    s.homepage         = 'http://api.clearent.com/swagger.html#!/Quest_API_Integration/Mobile_Transactions_using_SDKs'
    s.license          = { :type => 'APACHE', :file => 'LICENSE' }
    s.author           = { 'davidHigginbotham' => 'david.higginbotham@xplortechnologies.com' }
    s.source           = { :git => 'https://github.com/clearent/ClearentIdtechIOSFrameworkPod.git',
                           :tag => s.version.to_s
                         }

    s.ios.deployment_target = '10.1'

    s.vendored_frameworks = 'ClearentIdtechIOSFrameworkPod/IDTech.xcframework','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.xcframework','ClearentIdtechIOSFrameworkPod/CocoaLumberjack.xcframework'

    s.frameworks = 'CFNetwork', 'AudioToolbox','AVFoundation','MediaPlayer','ExternalAccessory'

    s.preserve_paths ='ClearentIdtechIOSFrameworkPod/IDTech.bundle','ClearentIdtechIOSFrameworkPod/ClearentIdtechMessages.bundle','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.xcframework','ClearentIdtechIOSFrameworkPod/IDTech.xcframework','ClearentIdtechIOSFrameworkPod/CocoaLumberjack.xcframework'

    s.requires_arc = true

    s.resource_bundles = {
       "ClearentIdtechIOSFrameworkBundles" => ["ClearentIdtechIOSFrameworkPod/*.bundle","ClearentIdtechIOSFrameworkPod/*.txt"]
    }

    s.resources = ['ClearentIdtechIOSFrameworkPod/IDTech.bundle','ClearentIdtechIOSFrameworkPod/ClearentIdtechMessages.bundle']

    s.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module' }

end
