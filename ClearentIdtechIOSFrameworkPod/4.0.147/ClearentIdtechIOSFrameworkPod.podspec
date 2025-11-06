#
# Be sure to run `pod lib lint ClearentIdtechIOSFrameworkPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ClearentIdtechIOSFrameworkPod'
    s.version          = '4.0.147'
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

    s.platform         = :ios, "13.0"
    
    s.swift_version    = '5.0'

    s.vendored_frameworks = 'ClearentIdtechIOSFrameworkPod/IDTech.xcframework','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.xcframework'

    s.frameworks = 'CFNetwork', 'AudioToolbox','AVFoundation','MediaPlayer','ExternalAccessory'

    s.resource = 'ClearentIdtechIOSFrameworkPod/ClearentIdtechMessages.bundle'
    
    s.resources = [
      "ClearentIdtechIOSFrameworkPod/ClearentIdtechMessages.bundle",
      "ClearentIdtechIOSFrameworkPod/**/*.{xib,storyboard,xcassets,bundle}"
    ]
    
    s.requires_arc = true
    
    s.dependency "CocoaLumberjack", "~> 3.8"

    s.pod_target_xcconfig = {
        'DEFINES_MODULE' => 'YES',
        'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
        'SWIFT_EMIT_MODULE_INTERFACE' => 'YES',
        'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
        'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
    }
      
end
