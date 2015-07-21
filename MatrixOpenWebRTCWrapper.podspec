Pod::Spec.new do |s|

  s.name         = "MatrixOpenWebRTCWrapper"
  s.version      = "0.0.1"
  s.summary      = "Wrapper lib to enable OpenWebRTC voice and video calls in application running MatrixSDK"

  s.description  = <<-DESC
                   This library is a wrapper between matrix-ios-sdk (https://github.com/matrix-org/matrix-ios-sdk) and openwebrtc-ios-sdk (https://github.com/EricssonResearch/openwebrtc-ios-sdk).

                   It implements the VoIP protocol defined in MatrixSDK by using the OpenWebRTC iOS SDK.
                   DESC

  s.homepage     = "http://www.matrix.org"

  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  s.author             = { "matrix.org" => "support@matrix.org" }
  s.social_media_url   = "http://twitter.com/matrixdotorg"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/matrix-org/matrix-ios-sdk.git", :tag => "v0.0.1" }
  s.source_files  = "MatrixOpenWebRTCWrapper", "MatrixOpenWebRTCWrapper/*.{h,m}"

  s.requires_arc  = true

  s.dependency 'OpenWebRTC-SDK'
  s.dependency 'MatrixSDK'
  
end
