#
#  Be sure to run `pod spec lint ClearentIdtechIOSFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ClearentIdtechIOSFramework"
  s.version      = "1.0.17"
  s.summary      = "Clearent IOS Framework supporting IDTech credit card reader."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
  This framework lets your app avoid handling credit card data by connecting to a supported IDTech credit card reader and sending the card data to Clearent for processing.
                   DESC

  s.homepage     = "http://api.clearent.com/swagger.html#!/Quest_API_Integration/Mobile_Transactions_using_SDKs"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "Apache License, Version 2.0"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "davidhigginbotham" => "dhigginbotham@clearent.com" }
  # Or just: s.author    = "davidhigginbotham"
  # s.authors            = { "davidhigginbotham" => "dhigginbotham@clearent.com" }
  # s.social_media_url   = "http://twitter.com/davidhigginbotham"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #
  s.platform     = :ios
  s.ios.deployment_target = "10.1"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/clearent/ClearentIdtechIOSFramework.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files = "ClearentIdtechIOSFramework/*.{h,m}","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/*.h"
  #s.exclude_files = "ClearentIdtechIOSFramework/ID*.h"

  s.vendored_frameworks = 'ClearentIdtechIOSFramework/IDTech.framework'

  #s.public_header_files  = 'ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/*.h'

  #s.public_header_files = "ClearentIdtechIOSFramework/ClearentIdtechIOSFramework.h","ClearentIdtechIOSFramework/Clearent_VP3300.h","ClearentIdtechIOSFramework/ClearentManualEntry.h","ClearentIdtechIOSFramework/ClearentPublicVP3300Delegate.h","ClearentIdtechIOSFramework/ClearentTransactionTokenRequest.h","ClearentIdtechIOSFramework/ClearentCard.h","ClearentIdtechIOSFramework/ClearentManualEntryDelegate.h"

  s.public_header_files = "ClearentIdtechIOSFramework/ClearentIdtechIOSFramework/*.{h}","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/IDT_VP3300.h","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/IDTMSRData.h","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/IDTCommon.h","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/IDT_Device.h","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/APDUResponse.h","ClearentIdtechIOSFramework/IDTech.framework/Versions/A/Headers/IDTEMVData.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

   s.resource  = "ClearentIdtechIOSFramework/IDTech.bundle"
  # s.resources = "Resources/*.png"

  #  s.preserve_paths = "ClearentIdtechIOSFramework/IDTech.bundle","$(SDKROOT)/IdTech.framework"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #
   s.frameworks = "CFNetwork", "AudioToolbox","AVFoundation","MediaPlayer","ExternalAccessory"
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

   s.requires_arc = true

   #s.dependency "CFNetwork", "~> 1.4", "AudioToolbox"
   #s.dependency 'AFNetworking', '~> 2.3'
end
