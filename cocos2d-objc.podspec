#
#  Be sure to run `pod spec lint cocos2d-objc.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "cocos2d-objc"
  spec.version      = "3.5.2"
  spec.summary      = "Cocos2d for iOS and OS X, built using Objective-C"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  Cocos2d for iOS and OS X, built using Objective-C
  Cocos2d for iOS and OS X, built using Objective-C
  Cocos2d for iOS and OS X, built using Objective-C
                   DESC

  spec.homepage     = "http://www.cocos2d-objc.org"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "LICENSE_cocos2d.txt" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Roman Gardukevich" => "email@address.com" }
  # Or just: spec.author    = "Roman Gardukevich"
  # spec.authors            = { "Roman Gardukevich" => "email@address.com" }
  # spec.social_media_url   = "https://twitter.com/Roman Gardukevich"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "8.0"
  spec.osx.deployment_target = "10.8"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source       = { :git => "https://github.com/OdNairy/cocos2d-objc.git", :tag => "v#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "cocos2d/*.{h,m,c}", "cocos2d/Support/*.{h,m,c}", "cocos2d/Platforms/**/*.{h,m,c}", "cocos2d-ui/**/*.{h,m,c}"
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  spec.osx.frameworks = "OpenGL"
  spec.ios.frameworks = "OpenGLES"

  spec.libraries = "z"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  spec.requires_arc = true
  spec.header_mappings_dir = "cocos2d"
  
  spec.dependency "ObjectAL-for-iPhone"#, "~> 1.0"
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
  spec.subspec 'ObjectiveChipmunk' do |chipmunk|
    chipmunk.requires_arc = false
    chipmunk.source_files = "external/Chipmunk/src/**/*.{c,h}", "external/Chipmunk/include/**/*.{c,h}", "external/Chipmunk/objectivec/**/*.{m,h}", "external/Chipmunk/objectivec/src/*.{m,h}"
    chipmunk.public_header_files = "external/Chipmunk/include/**/*.h", "external/Chipmunk/objectivec/include/**/*.h", "external/Chipmunk/xcode/libGLEW/include/**/*.h", "external/Chipmunk/xcode/libglfw/include/**/*.h" 
    chipmunk.header_mappings_dir = "external"
    chipmunk.xcconfig = {"HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/Headers/cocos2d/Chipmunk/include/\" \"$(PODS_ROOT)/Headers/cocos2d/Chipmunk/objectivec/include/\""}
  end
  

end
