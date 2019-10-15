#
# Be sure to run `pod lib lint ClearentIdtechIOSFrameworkPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ClearentIdtechIOSFrameworkPod'
    s.version          = '1.0.83'
    s.summary          = 'Clearent IOS Framework supporting IDTech credit card reader.'
    s.description  = <<-DESC
    This framework lets your app avoid handling credit card data by connecting to a supported IDTech credit card reader and sending the card data to Clearent for processing.
    DESC

    s.homepage         = 'http://api.clearent.com/swagger.html#!/Quest_API_Integration/Mobile_Transactions_using_SDKs'
    s.license          = { :type => 'APACHE', :file => 'LICENSE' }
    s.author           = { 'davidHigginbotham' => 'dhigginbotham@clearent.com' }
    s.source           = { :git => 'https://github.com/clearent/ClearentIdtechIOSFrameworkPod.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'

    s.source_files = 'ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/Clearent_VP3300.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentPublicVP3300Delegate.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentManualEntryDelegate.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentIdtechIOSFramework.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentCard.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentManualEntry.h','ClearentIdtechIOSFrameworkPod/IDTech.framework/Versions/A/Headers/*.{h}'

    s.vendored_frameworks = 'ClearentIdtechIOSFrameworkPod/IDTech.framework','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework'

    s.public_header_files = 'ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/Clearent_VP3300.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentPublicVP3300Delegate.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentManualEntryDelegate.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentIdtechIOSFramework.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentCard.h','ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework/Headers/ClearentManualEntry.h','ClearentIdtechIOSFrameworkPod/IDTech.framework/Versions/A/Headers/*.{h}'

    s.resource_bundles = {
        'ClearentIdtechIOSFrameworkPod' => ['ClearentIdtechIOSFrameworkPod/IDTech.bundle']
    }

    s.frameworks = 'CFNetwork', 'AudioToolbox','AVFoundation','MediaPlayer','ExternalAccessory'

    s.preserve_paths ='ClearentIdtechIOSFrameworkPod/ClearentIdtechIOSFramework.framework','ClearentIdtechIOSFrameworkPod/IDTech.bundle'

end
